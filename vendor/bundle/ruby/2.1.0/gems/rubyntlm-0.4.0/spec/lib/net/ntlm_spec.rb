
require 'rspec'
require 'net/ntlm'

describe Net::NTLM do
  let(:passwd) {"SecREt01"}
  let(:user) {"user"}
  let(:domain) {"domain"}
  let(:challenge) {["0123456789abcdef"].pack("H*")}
  let(:client_ch) {["ffffff0011223344"].pack("H*")}
  let(:timestamp) {1055844000}
  let(:trgt_info) {[
      "02000c0044004f004d00410049004e00" +
      "01000c00530045005200560045005200" +
      "0400140064006f006d00610069006e00" +
      "2e0063006f006d000300220073006500" +
      "72007600650072002e0064006f006d00" +
      "610069006e002e0063006f006d000000" +
      "0000"
  ].pack("H*")}
  let(:padded_pwd) { passwd.upcase.ljust(14, "\0")}
  let(:keys) { Net::NTLM.gen_keys(padded_pwd)}

  it 'should convert a value to 64-bit LE Integer' do
    Net::NTLM.pack_int64le(42).should == "\x2A\x00\x00\x00\x00\x00\x00\x00"
  end

  it 'should split a string into an array of slices, 7 chars or less' do
    Net::NTLM.split7("HelloWorld!").should == [ 'HelloWo', 'rld!']
  end

  it 'should generate DES keys from the supplied string' do
    first_key = ["52a2516b252a5161"].pack('H*')
    second_key = ["3180010101010101"].pack('H*')
    Net::NTLM.gen_keys(padded_pwd).should == [first_key, second_key]
  end

  it 'should encrypt the string with DES for each key supplied' do
    first_crypt = ["ff3750bcc2b22412"].pack('H*')
    second_crypt = ["c2265b23734e0dac"].pack('H*')
    Net::NTLM::apply_des(Net::NTLM::LM_MAGIC, keys).should == [first_crypt, second_crypt]
  end

  it 'should generate an lm_hash' do
    Net::NTLM::lm_hash(passwd).should == ["ff3750bcc2b22412c2265b23734e0dac"].pack("H*")
  end

  it 'should generate an ntlm_hash' do
    Net::NTLM::ntlm_hash(passwd).should == ["cd06ca7c7e10c99b1d33b7485a2ed808"].pack("H*")
  end

  it 'should generate an ntlmv2_hash' do
    Net::NTLM::ntlmv2_hash(user, passwd, domain).should == ["04b8e0ba74289cc540826bab1dee63ae"].pack("H*")
  end

  it 'should generate an lm_response' do
    Net::NTLM::lm_response(
        {
            :lm_hash => Net::NTLM::lm_hash(passwd),
            :challenge => challenge
        }
    ).should == ["c337cd5cbd44fc9782a667af6d427c6de67c20c2d3e77c56"].pack("H*")
  end

  it 'should generate an ntlm_response' do
    ntlm_hash = Net::NTLM::ntlm_hash(passwd)
    Net::NTLM::ntlm_response(
        {
            :ntlm_hash => ntlm_hash,
            :challenge => challenge
        }
    ).should == ["25a98c1c31e81847466b29b2df4680f39958fb8c213a9cc6"].pack("H*")
  end

  it 'should generate a lvm2_response' do
    Net::NTLM::lmv2_response(
        {
            :ntlmv2_hash => Net::NTLM::ntlmv2_hash(user, passwd, domain),
            :challenge => challenge
        },
        { :client_challenge => client_ch }
    ).should == ["d6e6152ea25d03b7c6ba6629c2d6aaf0ffffff0011223344"].pack("H*")
  end

  it 'should generate a ntlmv2_response' do
    Net::NTLM::ntlmv2_response(
        {
            :ntlmv2_hash => Net::NTLM::ntlmv2_hash(user, passwd, domain),
            :challenge => challenge,
            :target_info => trgt_info
        },
        {
            :timestamp => timestamp,
            :client_challenge => client_ch
        }
    ).should == [
        "cbabbca713eb795d04c97abc01ee4983" +
        "01010000000000000090d336b734c301" +
        "ffffff00112233440000000002000c00" +
        "44004f004d00410049004e0001000c00" +
        "53004500520056004500520004001400" +
        "64006f006d00610069006e002e006300" +
        "6f006d00030022007300650072007600" +
        "650072002e0064006f006d0061006900" +
        "6e002e0063006f006d00000000000000" +
        "0000"
    ].pack("H*")
  end

  it 'should generate a ntlm2_session' do
    session = Net::NTLM::ntlm2_session(
        {
            :ntlm_hash => Net::NTLM::ntlm_hash(passwd),
            :challenge => challenge
        },
        { :client_challenge => client_ch }
    )
    session[0].should == ["ffffff001122334400000000000000000000000000000000"].pack("H*")
    session[1].should == ["10d550832d12b2ccb79d5ad1f4eed3df82aca4c3681dd455"].pack("H*")
  end
end
