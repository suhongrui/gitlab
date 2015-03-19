# automatically generated by `rake builtins:matlab`
module Rugments
  module Lexers
    class Matlab
      def self.builtins
        @builtins ||= Set.new %w(ans clc diary format home iskeyword more accumarray blkdiag diag eye false freqspace linspace logspace meshgrid ndgrid ones rand true zeros cat horzcat vertcat colon end ind2sub sub2ind length ndims numel size height width iscolumn isempty ismatrix isrow isscalar isvector blkdiag circshift ctranspose diag flip fliplr flipud ipermute permute repmat reshape rot90 shiftdim issorted sort sortrows squeeze transpose vectorize plus uplus minus uminus times rdivide ldivide power mtimes mrdivide mldivide mpower cumprod cumsum diff prod sum ceil fix floor idivide mod rem round relationaloperators eq ge gt le lt ne isequal isequaln logicaloperatorsshortcircuit and not or xor all any false find islogical logical true intersect ismember issorted setdiff setxor union unique join innerjoin outerjoin bitand bitcmp bitget bitor bitset bitshift bitxor swapbytes specialcharacters colon double single int8 int16 int32 int64 uint8 uint16 uint32 uint64 cast typecast isinteger isfloat isnumeric isreal isfinite isinf isnan eps flintmax inf intmax intmin nan realmax realmin blanks cellstr char iscellstr ischar sprintf strcat strjoin ischar isletter isspace isstrprop sscanf strfind strrep strsplit strtok validatestring symvar regexp regexpi regexprep regexptranslate strcmp strcmpi strncmp strncmpi blanks deblank strtrim lower upper strjust datetime years days hours minutes seconds duration calyears calquarters calmonths calweeks caldays calendarduration exceltime juliandate posixtime yyyymmdd year quarter month week day hour minute second ymd hms split time timeofday isdst isweekend tzoffset between caldiff dateshift isbetween isdatetime isduration iscalendarduration isnat datenum datevec datestr now clock date calendar eomday weekday addtodate etime categorical iscategorical categories iscategory isordinal isprotected addcats mergecats removecats renamecats reordercats setcats summary countcats isundefined table array2table cell2table struct2table table2array table2cell table2struct readtable writetable istable height width summary intersect ismember setdiff setxor unique union join innerjoin outerjoin sortrows stack unstack ismissing standardizemissing varfun rowfun struct fieldnames getfield isfield isstruct orderfields rmfield setfield arrayfun structfun table2struct struct2table cell2struct struct2cell cell cell2mat cell2struct cell2table celldisp cellfun cellplot cellstr iscell iscellstr mat2cell num2cell strjoin strsplit struct2cell table2cell function_handle feval func2str str2func localfunctions functions addevent delevent gettsafteratevent gettsafterevent gettsatevent gettsbeforeatevent gettsbeforeevent gettsbetweenevents gettscollection isemptytscollection lengthtscollection settscollection sizetscollection tscollection addsampletocollection addts delsamplefromcollection getabstimetscollection getsampleusingtimetscollection gettimeseriesnames horzcattscollection removets resampletscollection setabstimetscollection settimeseriesnames vertcattscollection isa iscalendarduration iscategorical iscell iscellstr ischar isdatetime isduration isfield isfloat ishghandle isinteger isjava islogical isnumeric isobject isreal isstr isstruct istable is class validateattributes whos char cellstr int2str mat2str num2str str2double str2num native2unicode unicode2native base2dec bin2dec dec2base dec2bin dec2hex hex2dec hex2num num2hex table2array table2cell table2struct array2table cell2table struct2table cell2mat cell2struct mat2cell num2cell struct2cell plus uplus minus uminus times rdivide ldivide power mtimes mrdivide mldivide mpower cumprod cumsum diff prod sum ceil fix floor idivide mod rem round sin sind asin asind sinh asinh cos cosd acos acosd cosh acosh tan tand atan atand atan2 atan2d tanh atanh csc cscd acsc acscd csch acsch sec secd asec asecd sech asech cot cotd acot acotd coth acoth hypot exp expm1 log log10 log1p log2 nextpow2 nthroot pow2 reallog realpow realsqrt sqrt abs angle complex conj cplxpair i imag isreal j real sign unwrap factor factorial gcd isprime lcm nchoosek perms primes rat rats poly polyder polyeig polyfit polyint polyval polyvalm residue roots airy besselh besseli besselj besselk bessely beta betainc betaincinv betaln ellipj ellipke erf erfc erfcinv erfcx erfinv expint gamma gammainc gammaincinv gammaln legendre psi cart2pol cart2sph pol2cart sph2cart eps flintmax i j inf pi nan isfinite isinf isnan compan gallery hadamard hankel hilb invhilb magic pascal rosser toeplitz vander wilkinson cross dot kron surfnorm tril triu transpose cond condest inv linsolve lscov lsqnonneg pinv rcond sylvester mldivide mrdivide chol ichol cholupdate ilu lu qr qrdelete qrinsert qrupdate planerot ldl cdf2rdf rsf2csf gsvd svd balance cdf2rdf condeig eig eigs gsvd hess ordeig ordqz ordschur poly polyeig qz rsf2csf schur sqrtm ss2tf svd svds bandwidth cond condeig det isbanded isdiag ishermitian issymmetric istril istriu norm normest null orth rank rcond rref subspace trace expm logm sqrtm bsxfun funm arrayfun accumarray mpower corrcoef cov max cummax mean median min cummin mode std var rand randn randi randperm rng interp1 pchip spline ppval mkpp unmkpp padecoef interpft interp2 interp3 interpn ndgrid meshgrid griddata griddatan fminbnd fminsearch fzero lsqnonneg optimget optimset ode45 ode15s ode23 ode113 ode23t ode23tb ode23s ode15i decic odextend odeget odeset deval bvp4c bvp5c bvpinit bvpxtend bvpget bvpset deval dde23 ddesd ddensd ddeget ddeset deval pdepe pdeval integral integral2 integral3 quadgk quad2d cumtrapz trapz polyint del2 diff gradient polyder abs angle cplxpair fft fft2 fftn fftshift fftw ifft ifft2 ifftn ifftshift nextpow2 unwrap conv conv2 convn deconv detrend filter filter2 spdiags speye sprand sprandn sprandsym sparse spconvert issparse nnz nonzeros nzmax spalloc spfun spones spparms spy find full amd colamd colperm dmperm randperm symamd symrcm condest eigs ichol ilu normest spaugment sprank svds bicg bicgstab bicgstabl cgs gmres lsqr minres pcg qmr symmlq tfqmr etree etreeplot gplot symbfact treelayout treeplot unmesh tetramesh trimesh triplot trisurf delaunay delaunayn tetramesh trimesh triplot trisurf dsearchn tsearchn delaunay delaunayn boundary alphashape convhull convhulln patch voronoi voronoin polyarea inpolygon rectint plot plotyy plot3 loglog semilogx semilogy errorbar fplot ezplot ezplot3 linespec colorspec bar bar3 barh bar3h histogram histcounts rose pareto area pie pie3 stem stairs stem3 scatter scatter3 spy plotmatrix polar rose compass ezpolar linespec colorspec contour contourf contourc contour3 contourslice ezcontour ezcontourf feather quiver compass quiver3 streamslice streamline surf surfc surface surfl surfnorm mesh meshc meshz waterfall ribbon contour3 peaks cylinder ellipsoid sphere pcolor surf2patch ezsurf ezsurfc ezmesh ezmeshc contourslice flow isocaps isocolors isonormals isosurface reducepatch reducevolume shrinkfaces slice smooth3 subvolume volumebounds coneplot curl divergence interpstreamspeed stream2 stream3 streamline streamparticles streamribbon streamslice streamtube fill fill3 patch surf2patch movie getframe frame2im im2frame animatedline comet comet3 drawnow refreshdata title xlabel ylabel zlabel clabel datetick texlabel legend colorbar xlim ylim zlim box grid daspect pbaspect axes axis subplot hold gca cla annotation text line rectangle legend title xlabel ylabel zlabel datacursormode ginput gtext colormap colormapeditor colorbar brighten contrast shading graymon caxis hsv2rgb rgb2hsv rgbplot spinmap colordef whitebg hidden pan reset rotate rotate3d zoom datacursormode figurepalette plotbrowser plotedit plottools propertyeditor showplottool brush datacursormode linkdata linkaxes linkprop refreshdata view makehgtform viewmtx cameratoolbar campan camzoom camdolly camlookat camorbit campos camproj camroll camtarget camup camva camlight light lightangle lighting diffuse material specular alim alpha alphamap imshow image imagesc imread imwrite imfinfo imformats frame2im im2frame im2java im2double ind2rgb rgb2gray rgb2ind imapprox dither cmpermute cmunique print printopt printdlg printpreview orient savefig openfig hgexport hgsave hgload saveas axes figure groot get set inspect propedit gca gcf gcbf gcbo gco groot ancestor allchild findall findobj findfigs gobjects ishghandle ishandle copyobj delete gobjects isgraphics isempty isequal isa clf cla close set get groot uicontextmenu uimenu function_handle dragrect rbbox refresh shg hggroup hgtransform makehgtform eye hold ishold newplot clf cla drawnow opengl if for parfor switch try while break continue end pause return edit input publish notebook grabcode snapnow function nargin nargout varargin varargout narginchk nargoutchk validateattributes validatestring inputname persistent isvarname namelengthmax assignin global try error warning lastwarn assert oncleanup dbclear dbcont dbdown dbquit dbstack dbstatus dbstep dbstop dbtype dbup checkcode keyboard mlintrpt edit echo eval evalc evalin feval run builtin mfilename pcode clear clearvars disp openvar who whos load save matfile importdata uiimport csvread csvwrite dlmread dlmwrite textscan readtable writetable type xlsfinfo xlsread xlswrite readtable writetable fclose feof ferror fgetl fgets fileread fopen fprintf fread frewind fscanf fseek ftell fwrite im2java imfinfo imread imwrite nccreate ncdisp ncinfo ncread ncreadatt ncwrite ncwriteatt ncwriteschema netcdf h5create h5disp h5info h5read h5readatt h5write h5writeatt hdfinfo hdfread hdftool imread imwrite hdfan hdfhx hdfh hdfhd hdfhe hdfml hdfpt hdfv hdfvf hdfvh hdfvs hdfdf24 hdfdfr8 fitsdisp fitsinfo fitsread fitswrite multibandread multibandwrite cdfepoch cdfinfo cdfread cdfwrite todatenum cdflib audioinfo audioread audiowrite mmfileinfo audiodevinfo audioplayer audiorecorder sound soundsc beep lin2mu mu2lin xmlread xmlwrite xslt tcpclient datastore mapreduce datastore mapreducer matfile memmapfile dir ls pwd fileattrib exist isdir type visdiff what which cd copyfile delete recycle mkdir movefile rmdir open winopen fileparts fullfile filemarker filesep tempdir tempname matlabroot toolboxdir zip unzip gzip gunzip tar untar addpath rmpath path savepath userpath genpath pathsep pathtool restoredefaultpath clipboard computer dos getenv perl setenv system unix winqueryreg web webread websave weboptions urlread urlwrite sendmail instrcallback instrfind instrfindall readasync record serial serialbreak stopasync guide inspect figure axes uicontrol uitable uipanel uibuttongroup actxcontrol uitab uitabgroup uimenu uicontextmenu uitoolbar uipushtool uitoggletool dialog errordlg helpdlg msgbox questdlg uigetpref uisetpref waitbar warndlg export2wsdlg inputdlg listdlg uisetcolor uisetfont printdlg printpreview uigetdir uigetfile uiopen uiputfile uisave menu align movegui getpixelposition setpixelposition listfonts textwrap uistack uiwait uiresume waitfor waitforbuttonpress getappdata setappdata isappdata rmappdata guidata guihandles closereq classdef class isa isequal isobject enumeration events methods properties edit clear classdef import properties isprop dynamicprops methods ismethod handle dynamicprops isa events empty superclasses enumeration save load saveobj loadobj cat horzcat vertcat empty disp display numel size end subsref subsasgn subsindex substruct disp display details metaclass mexext inmem loadlibrary unloadlibrary libisloaded calllib libfunctions libfunctionsview libstruct libpointer javaarray javaclasspath javaaddpath javarmpath javachk isjava usejava javamethod javamethodedt javaobject javaobjectedt cell class clear depfun exist fieldnames im2java import inmem inspect isa methods methodsview which net enablenetfromnetworkdrive cell begininvoke endinvoke combine remove removeall bitand bitor bitxor bitnot actxserver actxcontrol actxcontrollist actxcontrolselect iscom addproperty deleteproperty inspect fieldnames methods methodsview invoke isevent eventlisteners registerevent unregisterallevents unregisterevent isinterface interfaces release move pyversion pyargs createclassfromwsdl createsoapmessage callsoapservice parsesoapresponse builddocsearchdb try functiontests runtests checkin checkout cmopts customverctrl undocheckout verctrl bench cputime memory profile profsave tic timeit toc clear inmem memory pack whos commandhistory commandwindow filebrowser workspace getpref setpref addpref rmpref ispref mex execute getchararray putchararray getfullmatrix putfullmatrix getvariable getworkspacedata putworkspacedata maximizecommandwindow minimizecommandwindow actxgetrunningserver enableservice mex dbmex mexext inmem ver computer mexext dbmex inmem mex mexext matlabwindows matlabunix exit quit matlabrc startup finish prefdir preferences ismac ispc isstudent isunix javachk license usejava ver verlessthan version doc help docsearch lookfor demo echodemo supportpackageinstaller targetupdater)
      end
    end
  end
end
