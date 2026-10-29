import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data210
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody210_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "lim", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody210_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody210_2 : Prog (BitVec 64) :=
.seq globalBody210_0 globalBody210_1

def globalBody210_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody210_4 : Prog (BitVec 64) :=
.seq globalBody210_2 globalBody210_3

def globalData210 : Decl (BitVec 64) :=
.function { name := "htr_list_roots", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("lim", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody210_4, returnShape := (Flapjack.Shape.one) }
def globalOutput210 := Pancake.PanLang.declToHOL globalData210
end InitECandidate.Proofs.FrontendStages.Declarations
