if exists("b:current_syntax")
  finish
endif

" Identification: https://ubsicap.github.io/usfm/identification/index.html
syn match usfmId /^\\id .\+/
syn match usfmUsfm /^\\usfm \d\.\d\+/
syn match usfmIde /^\\ide .\+/
syn match usfmSts /^\\sts .\+/
syn match usfmRem /^\\rem .\+/
syn match usfmH /^\\h .\+/
syn match usfmToc /^\\toca\?\d .\+/

hi link usfmId Keyword
hi link usfmUsfm Keyword
hi link usfmIde Keyword
hi link usfmSts Comment
hi link usfmRem Comment
hi link usfmH Error
hi link usfmToc String

" Introductions: https://ubsicap.github.io/usfm/introductions/index.html
syn match usfmImt /^\\imt\s\?\d .\+/
syn match usfmIs /^\\is\s\?\d .\+/
syn match usfmIp /^\\ip\s/
syn match usfmIpi /^\\ipi\s/
syn match usfmIm /^\\im\s/
syn match usfmImi /^\\imi\s/
syn match usfmIpq /^\\ipq\s/
syn match usfmIpq /^\\imq\s/
syn match usfmIpr /^\\ipr\s/
syn match usfmIq /^\\iq\s\?\d\s/
syn match usfmIb /^\\ib\s/
syn match usfmIli /^\\ili\s\?\d\s/
syn match usfmIot /^\\iot .\+/
syn match usfmIod /^\\io\s\?\d .\+/
syntax region usfmIor start="\\ior\s" end="\\ior\*"
syntax region usfmIqt start="\\iqt\s" end="\\iqt\*"
syn match usfmIex /^\\iex .\+/
syn match usfmImte /^\\imte\s\?\d .\+/
syn match usfmIe /^\\ie .\+/

hi link usfmImt String
hi link usfmIs String
hi link usfmIp Function
hi link usfmIm Function
hi link usfmIpq Function
hi link usfmImq Function
hi link usfmIpr Function
hi link usfmIq Function
hi link usfmIb Function
hi link usfmIli Function
hi link usfmIot String
hi link usfmIod String
hi link usfmIor Function
hi link usfmIqt Function
hi link usfmIex Function
hi link usfmImte Function
hi link usfmIe Function

" Titles, Headings, and Labels: https://ubsicap.github.io/usfm/titles_headings/index.html

syn match usfmMt /^\\mt\s\?\d .\+/
syn match usfmMte /^\\mte\s\?\d .\+/
syn match usfmMs /^\\ms\s\?\d .\+/
syn match usfmMr /^\\mr .\+/
syn match usfmS /^\\s\s\?\d .\+/
syn match usfmSr /^\\sr .\+/
syn match usfmR /^\\r\s\?\d .\+/
syntax region usfmRq start="\\rq\s" end="\\rq\*"
syn match usfmD /^\\d .\+/
syn match usfmSp /^\\sp .\+/
syn match usfmSd /^\\sd\s\?\d\s/

hi link usfmMt String
hi link usfmMte String
hi link usfmMs String
hi link usfmMr String
hi link usfmS String
hi link usfmSr String
hi link usfmR Function
hi link usfmRq Function
hi link usfmD String
hi link usfmSp Function
hi link usfmSd Function

" Chapters and Verses: https://ubsicap.github.io/usfm/chapters_verses/index.html

syn match usfmC /^\\c\s\?\d\+/
syntax region usfmCa start="\\ca\s" end="\\ca\*"
syn match usfmCl /^\\cl .\+/
syn match usfmCp /^\\cp .\+/
syn match usfmCd /^\\cd .\+/
syn match usfmV /^\\v\s\?\d\+\s/
syntax region usfmVa start="\\va\s" end="\\va\*"
syntax region usfmVp start="\\vp\s" end="\\vp\*"

hi link usfmC Identifier
hi link usfmCa Identifier
hi link usfmCl Identifier
hi link usfmCp Identifier
hi link usfmCd Identifier
hi link usfmV Identifier
hi link usfmVa Identifier
hi link usfmVp Identifier

" Paragraphs: https://ubsicap.github.io/usfm/paragraphs/index.html
syn match usfmP /^\\p\s/
syn match usfmM /^\\m\s/
syn match usfmPo /^\\po\s/
syn match usfmPr /^\\pr\s/
syn match usfmCls /^\\cls\s/
syn match usfmPmo /^\\pmo\s/
syn match usfmPm /^\\pm\s/
syn match usfmPmc /^\\pmc\s/
syn match usfmPmr /^\\pmr\s/
syn match usfmPi /\\pi\s\?\d\+/
syn match usfmMi /^\\mi\s/
syn match usfmNb /^\\nb/
syn match usfmPc /^\\pc\s/
syn match usfmPh /\\ph\s\?\d\+/
syn match usfmB /^\\b\s/

hi link usfmP Function
hi link usfmM Function
hi link usfmPr Function
hi link usfmCls Function
hi link usfmPmo Function
hi link usfmPm Function
hi link usfmPmc Function
hi link usfmPmr Function
hi link usfmPi Function
hi link usfmMi Function
hi link usfmNb Function
hi link usfmPc Function
hi link usfmPh Function
hi link usfmB Function

" Poetry: https://ubsicap.github.io/usfm/poetry/index.html
syn match usfmQ /^\\q\s\?\d\+/
syn match usfmQr /^\\qr\s/
syn match usfmQc /^\\qc\s/
syntax region usfmQs start="\\qs\s" end="\\qs\*"
syn match usfmQa /^\\qa\s/
syntax region usfmQac start="\\qac\s" end="\\qac\*"
syn match usfmQm /^\\qm\s\?\d\+/
syn match usfmQd /^\\qd\s/

hi link usfmQ Function
hi link usfmQr Function
hi link usfmQc Function
hi link usfmQs Function
hi link usfmQa Function
hi link usfmQac Function
hi link usfmQm Function
hi link usfmQd Function

" Lists: https://ubsicap.github.io/usfm/lists/index.html
syn match usfmLh /^\\lh\s/
syn match usfmLi /^\\li\s\?\d\+/
syn match usfmLf /^\\lf\s/
syn match usfmLim /^\\lim\s\?\d\+/
syntax region usfmLitl start="\\litl\s" end="\\litl\*"
syntax region usfmLik start="\\lik\s" end="\\lik\*"
syntax region usfmLiv start="\\liv\d\s" end="\\liv\d\*"

hi link usfmLh Function
hi link usfmLi Function
hi link usfmLf Function
hi link usfmLim Function
hi link usfmLitl Function
hi link usfmLik Function
hi link usfmLiv Function

" Tables: https://ubsicap.github.io/usfm/tables/index.html
syn match usfmTr /^\\tr\s/
syn match usfmTh /^\\th\s\?\d\s/
syn match usfmThr /^\\thr\s\?\d\s/
syn match usfmTc /^\\tc\s\?\d\s/
syn match usfmTcr /^\\tcr\s\?\d\s/

hi link usfmTr Function
hi link usfmTh Function
hi link usfmThr Function
hi link usfmTc Function
hi link usfmTcr Function

" Footnotes: https://ubsicap.github.io/usfm/notes_basic/fnotes.html
syntax region usfmF start="\\f\s" end="\\f\*"
syntax region usfmFe start="\\fe\s" end="\\fe\*"
syn match usfmFr /^\\fr\s/
syn match usfmFq /^\\fq\s/
syn match usfmFqa /^\\fqa\s/
syn match usfmFk /^\\fk\s/
syn match usfmFl /^\\fl\s/
syn match usfmFw /^\\fw\s/
syn match usfmFp /^\\fp\s/
syntax region usfmFv start="\\fv\s" end="\\fv\*"
syn match usfmFt /^\\ft\s/
syntax region usfmFdc start="\\fdc\s" end="\\fdc\*"
syntax region usfmFm start="\\fm\s" end="\\fm\*"

hi link usfmF Function
hi link usfmFe Function
hi link usfmFr Function
hi link usfmFq Function
hi link usfmFqa Function
hi link usfmFk Function
hi link usfmFl Function
hi link usfmFw Function
hi link usfmFp Function
hi link usfmFv Function
hi link usfmFt Function
hi link usfmFdc Function
hi link usfmFm Function

" Cross References: https://ubsicap.github.io/usfm/notes_basic/xrefs.html
syntax region usfmX start="\\x\s" end="\\x\*"
syn match usfmXo /^\\xo\s/
syn match usfmXk /^\\xk\s/
syn match usfmXq /^\\xq\s/
syn match usfmXt /^\\xt\s/
syn match usfmXta /^\\xta\s/
syntax region usfmXop start="\\xop\s" end="\\xop\*"
syntax region usfmXot start="\\xot\s" end="\\xot\*"
syntax region usfmXnt start="\\xnt\s" end="\\xnt\*"
syntax region usfmXdc start="\\xdc\s" end="\\xdc\*"
syntax region usfmRq start="\\rq\s" end="\\rq\*"

hi link usfmX Function
hi link usfmXo Function
hi link usfmXk Function
hi link usfmXq Function
hi link usfmXt Function
hi link usfmXta Function
hi link usfmXop Function
hi link usfmXot Function
hi link usfmXnt Function
hi link usfmXdc Function
hi link usfmRq Function

" Words and Characters: https://ubsicap.github.io/usfm/characters/index.html
syntax region usfmAdd start="\\add\s" end="\\add\*"
syntax region usfmBk start="\\bk\s" end="\\bk\*"
syntax region usfmDc start="\\dc\s" end="\\dc\*"
syntax region usfmK start="\\k\s" end="\\k\*"
syn match usfmLit /^\\lit\s/
syntax region usfmNd start="\\nd\s" end="\\nd\*"
syntax region usfmOrd start="\\ord\s" end="\\ord\*"
syntax region usfmPng start="\\png\s" end="\\png\*"
syntax region usfmAddpn start="\\addpn\s" end="\\addpn\*"
syntax region usfmQt start="\\qt\s" end="\\qt\*"
syntax region usfmSig start="\\sig\s" end="\\sig\*"
syntax region usfmSls start="\\sls\s" end="\\sls\*"
syntax region usfmTl start="\\tl\s" end="\\tl\*"
syntax region usfmWj start="\\wj\s" end="\\wj\*"
syntax region usfmEm start="\\em\s" end="\\em\*"
syntax region usfmBd start="\\bd\s" end="\\bd\*"
syntax region usfmIt start="\\it\s" end="\\it\*"
syntax region usfmBdit start="\\bdit\s" end="\\bdit\*"
syntax region usfmNo start="\\no\s" end="\\no\*"
syntax region usfmSc start="\\sc\s" end="\\sc\*"
syntax region usfmSup start="\\sup\s" end="\\sup\*"
syn match usfmNbsp /\~/
syn match usfmDiscretionaryLineBreak /\/\//
syn match usfmPb /\\pb/
syntax region usfmFig start="\\fig\s" end="\\fig\*"
syntax region usfmNdx start="\\ndx\s" end="\\ndx\*"
syntax region usfmRb start="\\rb\s" end="\\rb\*"
syntax region usfmPro start="\\pro\s" end="\\pro\*"
syntax region usfmW start="\\w\s" end="\\w\*"
syntax region usfmWg start="\\wg\s" end="\\wg\*"
syntax region usfmWh start="\\wh\s" end="\\wh\*"
syntax region usfmWa start="\\wa\s" end="\\wa\*"

hi link usfmAdd Function
hi link usfmBk Function
hi link usfmDc Function
hi link usfmK Function
hi link usfmLit Function
hi link usfmNd Function
hi link usfmOrd Function
hi link usfmPng Function
hi link usfmAddpn Function
hi link usfmQt Function
hi link usfmSig Function
hi link usfmSls Function
hi link usfmTl Function
hi link usfmWj Function
hi link usfmEm Function
hi link usfmBd Function
hi link usfmIt Function
hi link usfmBdit Function
hi link usfmNo Function
hi link usfmSc Function
hi link usfmSup Function
hi link usfmNbsp Function
hi link usfmDiscretionaryLineBreak Function
hi link usfmPb Function
hi link usfmFig Function
hi link usfmNdx Function
hi link usfmRb Function
hi link usfmPro Function
hi link usfmW Function
hi link usfmWg Function
hi link usfmWh Function
hi link usfmWa Function

" Word-Level Attributes: https://ubsicap.github.io/usfm/attributes/index.html
syn match usfmAttr /|.\{-}/

hi link usfmAttr Function

let b:current_syntax = "usfm"
