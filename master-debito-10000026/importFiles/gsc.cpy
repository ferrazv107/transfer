000030*============================================================== 
000040 01 PROT00.                                                     
000050* - CODIGO DE RETORNO                                           
000051     03 PROT-RETC                           PIC X(004).         
000070* - ERRO CICS/NAO CICS                                          
000071     03 PROT-REAS                           PIC X(004).         
000090* - CODIGO DE REDE:                                             
000100     03 PROT-COD-REDE                       PIC X(008).         
000110* - TAMANHO DA MENSAGEM                                         
000120     03 PROT-TAM-MSG                        PIC 9(005).         
000121     03 FILLER REDEFINES PROT-TAM-MSG.                          
000122        05 PROT-TAM-MSG-BIN                 PIC S9(009) COMP.   
000123        05 FILLER                           PIC X(001).         
000130* - CONTROLE SESSAO                                             
000140     03 PROT-CONTROLE-SESSAO.                                   
000150        05 PROT-TIPO-SESSAO                 PIC X(004).         
000151        05 PROT-TIPO-MSG REDEFINES PROT-TIPO-SESSAO             
000152                                            PIC X(004). 
000160        05 PROT-PTR-ENT-FILA                POINTER.              
000170        05 FILLER                           PIC X(002).           
000180* - CONTROLE URL                                                  
000190     03 PROT-CONTROLE-URL REDEFINES PROT-CONTROLE-SESSAO.         
000200        05 PROT-CODIGO-AGENCIA              PIC S9(008) COMP.     
000210        05 PROT-CODIGO-SUBAGENCIA           PIC S9(004) COMP.     
000220        05 PROT-CODIGO-SERVIDOR             PIC S9(004) COMP.     
000230        05 PROT-PORTA-CONEXAO               PIC S9(004) COMP.     
000240* - TIPO DE ENVIO/RETORNO                                         
000250     03 PROT-INDC-ORIG-DEST                 PIC X(001).           
000260        88 PROT-ORIG-COMMAREA                   VALUE 'C'.        
000270        88 PROT-ORIG-TS                         VALUE 'T'.        
000280* - NOME DA TS                                                    
000290     03 PROT-NOM-TSQ                        PIC X(016).           
000300* - SYSID DO CICS GSC ATENDENTE                                   
000310     03 PROT-ID-CICS-GSC                    PIC X(004).           
000320* - SYSID DA TS PARA RETORNO                                      
000330     03 PROT-ID-CICS                        PIC X(004).           
000340*===============================================================* 