import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data195
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody195_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.var Flapjack.VarKind.local "limit_chunks", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody195_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody195_2 : Prog (BitVec 64) :=
.seq globalBody195_0 globalBody195_1

def globalBody195_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody195_4 : Prog (BitVec 64) :=
.seq globalBody195_2 globalBody195_3

def globalBody195_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody195_6 : Prog (BitVec 64) :=
.seq globalBody195_4 globalBody195_5

def globalBody195_7 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody195_6

def globalBody195_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody195_7

def globalData195 : Decl (BitVec 64) :=
.function { name := "htr_bytes_list", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit_chunks", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := globalBody195_8, returnShape := (Flapjack.Shape.one) }
def globalOutput195 := Pancake.PanLang.declToHOL globalData195
end InitECandidate.Proofs.FrontendStages.Declarations
