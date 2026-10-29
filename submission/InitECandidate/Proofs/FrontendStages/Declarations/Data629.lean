import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify613
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body629_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "mm", Flapjack.Exp.const 8#64]]

def body629_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "r",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "mm", Flapjack.Exp.const 8#64]],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "mm"],
        Flapjack.Exp.const 8#64]]

def body629_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body629_3 : Prog (BitVec 64) :=
.seq body629_1 body629_2

def body629_4 : Prog (BitVec 64) :=
.seq body629_0 body629_3

def body629_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body629_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mm")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body629_4 body629_5

def body629_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_divmnu"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "mm",
    Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "un", Flapjack.Exp.var Flapjack.VarKind.local "vn"]

def body629_8 : Prog (BitVec 64) :=
.seq body629_7 body629_2

def body629_9 : Prog (BitVec 64) :=
.seq body629_6 body629_8

def body629_10 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body629_9

def body629_11 : Prog (BitVec 64) :=
.seq body629_0 body629_1

def body629_12 : Prog (BitVec 64) :=
.seq body629_11 body629_2

def body629_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mm")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body629_12 body629_5

def body629_14 : Prog (BitVec 64) :=
.seq body629_13 body629_7

def body629_15 : Prog (BitVec 64) :=
.seq body629_14 body629_2

def body629_16 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body629_15

def originalData629 : Decl (BitVec 64) :=
.function { name := "bn_mod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("r", Flapjack.Shape.one), ("q", Flapjack.Shape.one), ("un", Flapjack.Shape.one), ("vn", Flapjack.Shape.one)], body := body629_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData629 : Decl (BitVec 64) :=
.function { name := "bn_mod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("r", Flapjack.Shape.one), ("q", Flapjack.Shape.one), ("un", Flapjack.Shape.one), ("vn", Flapjack.Shape.one)], body := body629_16, returnShape := (Flapjack.Shape.one) }
def original629 := Pancake.PanLang.declToHOL originalData629
def simplified629 := Pancake.PanLang.declToHOL simplifiedData629
end InitECandidate.Proofs.FrontendStages.Declarations
