jcurl(){
	curl $@ | python -m json.tool
}

