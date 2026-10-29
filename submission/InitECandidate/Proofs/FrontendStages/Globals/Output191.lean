import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data191
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody191_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"), Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody191_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody191_2 : Prog (BitVec 64) :=
.seq globalBody191_0 globalBody191_1

def globalBody191_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody191_4 : Prog (BitVec 64) :=
.seq globalBody191_2 globalBody191_3

def globalBody191_5 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody191_4

def globalBody191_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody191_5

def globalData191 : Decl (BitVec 64) :=
.function { name := "htr_pbytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody191_6, returnShape := (Flapjack.Shape.one) }
def globalOutput191 := Pancake.PanLang.declToHOL globalData191
end InitECandidate.Proofs.FrontendStages.Declarations
