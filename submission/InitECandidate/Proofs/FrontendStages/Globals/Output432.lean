import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data432
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody432_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "k"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "k"), Flapjack.Exp.const 32#64,
    Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def globalBody432_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "k")

def globalBody432_2 : Prog (BitVec 64) :=
.seq globalBody432_0 globalBody432_1

def globalBody432_3 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_keys") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody432_2

def globalData432 : Decl (BitVec 64) :=
.function { name := "sorted_keys32", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("tmp", Flapjack.Shape.one)], body := globalBody432_3, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput432 := Pancake.PanLang.declToHOL globalData432
end InitECandidate.Proofs.FrontendStages.Declarations
