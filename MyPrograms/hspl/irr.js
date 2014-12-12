<form name="irr" id="irr" action="#"> 
 <p>Cash Flows - <i>Period</i></p> 
 <p><input type="text" name="c0" id="c0" size="5" value="-1000" /> <i>0</i></p> 
 <p><input type="text" name="c1" id="c1" size="5" value="250" /> <i>1</i></p> 
 <p><input type="text" name="c2" id="c2" size="5" value="250" /> <i>2</i></p> 
 <p><input type="text" name="c3" id="c3" size="5" value="250" /> <i>3</i></p> 
 <p><input type="text" name="c4" id="c4" size="5" value="250" /> <i>4</i></p> 
 <p><input type="text" name="c5" id="c5" size="5" value="250" /> <i>5</i></p> 
 <p><input type="text" name="c6" id="c6" size="5" value="0" /> <i>6</i></p> 
 <p><input type="text" name="c7" id="c7" size="5" value="0" /> <i>7</i></p> 
 <p><input type="text" name="c8" id="c8" size="5" value="0" /> <i>8</i></p> 
 <p><input type="text" name="c9" id="c9" size="5" value="0" /> <i>9</i></p> 
 <p><input type="text" name="c10" id="c10" size="5" value="0" /> <i>10</i></p> 
 <p><input type="text" name="c11" id="c11" size="5" value="0" /> <i>11</i></p> 
 <p><input type="text" name="c12" id="c12" size="5" value="0" /> <i>12</i></p> 
 <p><input type="text" name="c13" id="c13" size="5" value="0" /> <i>13</i></p> 
 <p><input type="text" name="c14" id="c14" size="5" value="0" /> <i>14</i></p> 
 <p><input type="text" name="c15" id="c15" size="5" value="0" /> <i>15</i></p> 
 <p><input type="text" name="c16" id="c16" size="5" value="0" /> <i>16</i></p> 
 <p><input type="text" name="c17" id="c17" size="5" value="0" /> <i>17</i></p> 
 <p><input type="text" name="c18" id="c18" size="5" value="0" /> <i>18</i></p> 
 <p><input type="text" name="c19" id="c19" size="5" value="0" /> <i>19</i></p> 
 <p><input type="text" name="c20" id="c20" size="5" value="0" /> <i>20</i></p> 
 <p><input type="button" value="Calculate" onclick="calcIRR();" /></p> 
 </form> 
 </blockquote> 
 
 <h3>Minimum Attractive Rate of Return - MARR</h3> 
 <p><i>Minimum Attractive Rate of Return - MARR</i> - represents the required or 
 minimum Internal Rate of Return for a project investment.&nbsp; </p> 
 
        <script type="text/javascript">       /* <![CDATA[ */        
 
 // Internal Rate of Return of a Cash Flow Stream 
 
 function IRR(cashFlow){
 	this.cashFlow = cashFlow;
 }
 
 // returns result
 IRR.prototype.result = function(){
 	var irr = 0;
 	var npwT = 0;
 	if (this.npw(irr) > 0) {
 		while (irr < 1) {
 			npwT = this.npw(irr);
 			if (npwT < 0) return irr;
 			irr = irr + 0.0001;
 		} 
 	}
 	if (this.npw(irr) < 0) {
 		while (irr > -1) {
 			npwT = this.npw(irr);
 			if (npwT > 0) return irr;
 			irr = irr - 0.0001;
 		} 
 	}
 	return -1;
 }
 
 IRR.prototype.npw = function (irr){
 	var npw = 0;
 	for (var m = 0; m < this.cashFlow.length; m++){
 		if (this.cashFlow[m] != 0) npw += this.cashFlow[m] / Math.pow((1 + irr), m);
 	}
 	return npw;
 }
 
 // returns input values
 IRR.prototype.inputData = function(){
 	return this.cashFlow + " " + this.i;
 }
 
 // Copyright engineeringtoolbox.com
 
 
 
 function calcIRR(){
 		var cashFlow = [];
 		cashFlow[0] = document.irr.c0.value;
 		cashFlow[1] = document.irr.c1.value;
 		cashFlow[2] = document.irr.c2.value;
 		cashFlow[3] = document.irr.c3.value;
 		cashFlow[4] = document.irr.c4.value;
 		cashFlow[5] = document.irr.c5.value;
 		cashFlow[6] = document.irr.c6.value;
 		cashFlow[7] = document.irr.c7.value;
 		cashFlow[8] = document.irr.c8.value;
 		cashFlow[9] = document.irr.c9.value;
 		cashFlow[10] = document.irr.c10.value;
 		cashFlow[11] = document.irr.c11.value;
 		cashFlow[12] = document.irr.c12.value;
 		cashFlow[13] = document.irr.c13.value;
 		cashFlow[14] = document.irr.c14.value;
 		cashFlow[15] = document.irr.c15.value;
 		cashFlow[16] = document.irr.c16.value;
 		cashFlow[17] = document.irr.c17.value;
 		cashFlow[18] = document.irr.c18.value;
 		cashFlow[19] = document.irr.c19.value;
 		cashFlow[20] = document.irr.c20.value;
 	    var irr = new IRR(cashFlow);
 	    Box.ajaxReq('/docs/scripts/conv.js',false);
 	    var msg = "Internal Rate of Return : " + Conv.rounding(irr.result()*100) + " %";
 	   	alert(msg);
 } 
 
        /* ]]> */       </script>  