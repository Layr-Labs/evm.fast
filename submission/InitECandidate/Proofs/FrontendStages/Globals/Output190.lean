import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data190
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody190_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize_progressive"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody190_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "len",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody190_2 : Prog (BitVec 64) :=
.seq globalBody190_0 globalBody190_1

def globalBody190_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody190_4 : Prog (BitVec 64) :=
.seq globalBody190_2 globalBody190_3

def globalData190 : Decl (BitVec 64) :=
.function { name := "htr_plist_chunks", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody190_4, returnShape := (Flapjack.Shape.one) }
def globalOutput190 := Pancake.PanLang.declToHOL globalData190
end InitECandidate.Proofs.FrontendStages.Declarations
