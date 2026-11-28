import InitECandidate.Solver.Divm.Defs

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Divm
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def dmc0 : ProgHOL 64 :=
  (ProgHOL.ite (ExpHOL.cmp .equal (ExpHOL.var .local (nm "n")) ((cw 1))) (ProgHOL.dec (nm "d") .one (ExpHOL.load .one (ExpHOL.var .local (nm "v"))) (ProgHOL.dec (nm "k") .one ((cw 0)) (ProgHOL.seq (ProgHOL.assign .local (nm "j") (ExpHOL.var .local (nm "m"))) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower ((cw 0)) (ExpHOL.var .local (nm "j"))) (ProgHOL.seq (ProgHOL.assign .local (nm "j") (ExpHOL.op .sub [ExpHOL.var .local (nm "j"), (cw 1)])) (ProgHOL.decCall (nm "qr") (ShapeHOL.comb [ShapeHOL.one, ShapeHOL.one]) (nm "div64by32") [ExpHOL.var .local (nm "k"), ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "u"), ExpHOL.panop .mul [ExpHOL.var .local (nm "j"), (cw 8)]]), ExpHOL.var .local (nm "d")] (ProgHOL.seq (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "q"), ExpHOL.panop .mul [ExpHOL.var .local (nm "j"), (cw 8)]]) (ExpHOL.rfield 0 (ExpHOL.var .local (nm "qr")))) (ProgHOL.assign .local (nm "k") (ExpHOL.rfield 1 (ExpHOL.var .local (nm "qr")))))))) (ProgHOL.seq (ProgHOL.store (ExpHOL.var .local (nm "r")) (ExpHOL.var .local (nm "k"))) (ProgHOL.return ((cw 0)))))))) (ProgHOL.skip))

def dmc1 : ProgHOL 64 :=
  (ProgHOL.assign .local (nm "i") (ExpHOL.op .sub [ExpHOL.var .local (nm "n"), (cw 1)]))

def dmc2 : ProgHOL 64 :=
  (ProgHOL.while (ExpHOL.cmp .lower ((cw 0)) (ExpHOL.var .local (nm "i"))) (ProgHOL.seq (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "vn"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]]) (ExpHOL.op .and [ExpHOL.op .or [ExpHOL.shift .lsl (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "v"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]])) (ExpHOL.var .local (nm "s")), ExpHOL.shift .lsr (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "v"), ExpHOL.panop .mul [ExpHOL.op .sub [ExpHOL.var .local (nm "i"), (cw 1)], (cw 8)]])) (ExpHOL.op .sub [(cw 32), ExpHOL.var .local (nm "s")])], (cw 4294967295)])) (ProgHOL.assign .local (nm "i") (ExpHOL.op .sub [ExpHOL.var .local (nm "i"), (cw 1)]))))

def dmc3 : ProgHOL 64 :=
  (ProgHOL.store (ExpHOL.var .local (nm "vn")) (ExpHOL.op .and [ExpHOL.shift .lsl (ExpHOL.load .one (ExpHOL.var .local (nm "v"))) (ExpHOL.var .local (nm "s")), (cw 4294967295)]))

def dmc4 : ProgHOL 64 :=
  (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "un"), ExpHOL.panop .mul [ExpHOL.var .local (nm "m"), (cw 8)]]) (ExpHOL.shift .lsr (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "u"), ExpHOL.panop .mul [ExpHOL.op .sub [ExpHOL.var .local (nm "m"), (cw 1)], (cw 8)]])) (ExpHOL.op .sub [(cw 32), ExpHOL.var .local (nm "s")])))

def dmc5 : ProgHOL 64 :=
  (ProgHOL.assign .local (nm "i") (ExpHOL.op .sub [ExpHOL.var .local (nm "m"), (cw 1)]))

def dmc6 : ProgHOL 64 :=
  (ProgHOL.while (ExpHOL.cmp .lower ((cw 0)) (ExpHOL.var .local (nm "i"))) (ProgHOL.seq (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "un"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]]) (ExpHOL.op .and [ExpHOL.op .or [ExpHOL.shift .lsl (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "u"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]])) (ExpHOL.var .local (nm "s")), ExpHOL.shift .lsr (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "u"), ExpHOL.panop .mul [ExpHOL.op .sub [ExpHOL.var .local (nm "i"), (cw 1)], (cw 8)]])) (ExpHOL.op .sub [(cw 32), ExpHOL.var .local (nm "s")])], (cw 4294967295)])) (ProgHOL.assign .local (nm "i") (ExpHOL.op .sub [ExpHOL.var .local (nm "i"), (cw 1)]))))

def dmc7 : ProgHOL 64 :=
  (ProgHOL.store (ExpHOL.var .local (nm "un")) (ExpHOL.op .and [ExpHOL.shift .lsl (ExpHOL.load .one (ExpHOL.var .local (nm "u"))) (ExpHOL.var .local (nm "s")), (cw 4294967295)]))

def dmc8 : ProgHOL 64 :=
  (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.op .sub [ExpHOL.var .local (nm "m"), ExpHOL.var .local (nm "n")], (cw 1)]))

def dmc9 : ProgHOL 64 :=
  (ProgHOL.seq (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.op .sub [ExpHOL.var .local (nm "m"), ExpHOL.var .local (nm "n")], (cw 1)])) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "j")) (ExpHOL.var .local (nm "m"))) (ProgHOL.seq (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "q"), ExpHOL.panop .mul [ExpHOL.var .local (nm "j"), (cw 8)]]) ((cw 0))) (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.var .local (nm "j"), (cw 1)])))) (ProgHOL.seq (ProgHOL.assign .local (nm "i") ((cw 0))) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "i")) (ExpHOL.var .local (nm "n"))) (ProgHOL.seq (ProgHOL.store (ExpHOL.op .add [ExpHOL.var .local (nm "r"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]]) (ExpHOL.op .or [ExpHOL.shift .lsr (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "un"), ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)]])) (ExpHOL.var .local (nm "s")), ExpHOL.op .and [ExpHOL.shift .lsl (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "un"), ExpHOL.panop .mul [ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)], (cw 8)]])) (ExpHOL.op .sub [(cw 32), ExpHOL.var .local (nm "s")]), (cw 4294967295)]])) (ProgHOL.assign .local (nm "i") (ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)])))) (ProgHOL.return ((cw 0)))))))

end InitECandidate.Solver.Divm
