function calledit( hedit, hpop, haxes3d, which )
ct = get( hedit, 'string' );
vpop =get( hpop, 'value' );
x=1;
if~isempty( vpop )
		popstr ={ 'drawall( 3, haxes3d );', ...
		'drawall( 5, haxes3d )', ...
		'drawall( 9, haxes3d )', ...
		'drawall( 22, haxes3d )' };
		cct = str2double( ct );
		if which
			eval( popstr{ vpop })
		else
			if ~isnan( cct )&& cct>0
				eval( ['drawall( ', ct, ', haxes3d )' ])
			elseif ~isempty( ct )
				errordlg( '请输入一个正阿拉伯数字，如：17', '提示' );
			end
		end
	end
end
