Name:           practice1
Version:	1        
Release:        1%{?dist}
Summary:        Example
License:        BSD
URL:		http://softserveinc.com            	       
BuildArch:	noarch
  
%description	
%{name} - Practice2

%prep


%build
cat > metapackage <<EOF
echo "My name is %{name}, calling me:"
metapackage
EOF


%install
if ! ls /home/$LOGNAME/%{name}; then
mkdir /home/$LOGNAME/%{name}
fi
install -m 0644 metapackage /home/$LOGNAME/%{name}/metapackage

%post




%files


%doc


%changelog
* Thu Jul 31 2018 glad
-buils source metapackage
