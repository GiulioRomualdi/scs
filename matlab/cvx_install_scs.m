clear all
make_scs

fs = cvx_where;
scs_install_path = strcat(fs,'/scs');
mkdir(scs_install_path);

%scs_bin_loc = sprintf('%s/',scs_install_path);
copyfile(strcat('scs_direct.',mexext),scs_install_path);
copyfile(strcat('scs_indirect.',mexext),scs_install_path);

copyfile('cvx_scs.m', strcat(fs,'/shims/cvx_scs.m'));
copyfile('scs.m', scs_install_path);
cvx_setup
