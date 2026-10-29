import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify29
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body45_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body45_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body45_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 256#64)) body45_0 body45_1

def body45_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l")
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 63#64]),
      Flapjack.Exp.const 1#64])

def body45_4 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("u256_limb") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 6#64)]) body45_3

def body45_5 : Prog (BitVec 64) :=
.seq body45_2 body45_4

def originalData45 : Decl (BitVec 64) :=
.function { name := "u256_bit", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("t", Flapjack.Shape.one)], body := body45_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData45 : Decl (BitVec 64) :=
.function { name := "u256_bit", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("t", Flapjack.Shape.one)], body := body45_5, returnShape := (Flapjack.Shape.one) }
def original45 := Pancake.PanLang.declToHOL originalData45
def simplified45 := Pancake.PanLang.declToHOL simplifiedData45
end InitECandidate.Proofs.FrontendStages.Declarations
