import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data442
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody442_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def globalBody442_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody442_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "s")
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody442_0 globalBody442_1

def globalBody442_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody442_4 : Prog (BitVec 64) :=
.seq globalBody442_2 globalBody442_3

def globalBody442_5 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody442_4

def globalData442 : Decl (BitVec 64) :=
.function { name := "add_sat", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody442_5, returnShape := (Flapjack.Shape.one) }
def globalOutput442 := Pancake.PanLang.declToHOL globalData442
end InitECandidate.Proofs.FrontendStages.Declarations
