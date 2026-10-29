import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify426
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body442_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def body442_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body442_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "s")
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) body442_0 body442_1

def body442_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "s")

def body442_4 : Prog (BitVec 64) :=
.seq body442_2 body442_3

def body442_5 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body442_4

def originalData442 : Decl (BitVec 64) :=
.function { name := "add_sat", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body442_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData442 : Decl (BitVec 64) :=
.function { name := "add_sat", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body442_5, returnShape := (Flapjack.Shape.one) }
def original442 := Pancake.PanLang.declToHOL originalData442
def simplified442 := Pancake.PanLang.declToHOL simplifiedData442
end InitECandidate.Proofs.FrontendStages.Declarations
