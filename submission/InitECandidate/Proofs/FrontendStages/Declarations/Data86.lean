import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify70
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body86_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body86_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body86_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 32#64)) body86_0 body86_1

def body86_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l")
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 63#64]),
      Flapjack.Exp.const 255#64])

def body86_4 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("u256_limb") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 6#64)]) body86_3

def body86_5 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 31#64, Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.const 8#64]) body86_4

def body86_6 : Prog (BitVec 64) :=
.seq body86_2 body86_5

def originalData86 : Decl (BitVec 64) :=
.function { name := "u256_byte", inline := false, exported := false, params := [("i", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body86_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData86 : Decl (BitVec 64) :=
.function { name := "u256_byte", inline := false, exported := false, params := [("i", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body86_6, returnShape := (Flapjack.Shape.one) }
def original86 := Pancake.PanLang.declToHOL originalData86
def simplified86 := Pancake.PanLang.declToHOL simplifiedData86
end InitECandidate.Proofs.FrontendStages.Declarations
