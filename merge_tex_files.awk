#! /usr/bin/gawk -f


BEGIN{
  FS="\\input{|}"
}{
  regex="(%*)(.*)\\input{(.*)}";
  if(match($0,regex,a)){
    file = a[3];
    if(a[1]==""){
      match(file,".tex",b);
      if(RLENGTH<0){
          system("./merge_tex_files.awk "file".tex");
      }
      else{
          system("./merge_tex_files.awk "file);
      }
    }
  }
  else{
    print $0
  }
}
