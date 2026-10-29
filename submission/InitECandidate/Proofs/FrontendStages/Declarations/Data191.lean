import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify175
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body191_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"), Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body191_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body191_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body191_3 : Prog (BitVec 64) :=
.seq body191_1 body191_2

def body191_4 : Prog (BitVec 64) :=
.seq body191_0 body191_3

def body191_5 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body191_4

def body191_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body191_5

def body191_7 : Prog (BitVec 64) :=
.seq body191_0 body191_1

def body191_8 : Prog (BitVec 64) :=
.seq body191_7 body191_2

def body191_9 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body191_8

def body191_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body191_9

def originalData191 : Decl (BitVec 64) :=
.function { name := "htr_pbytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body191_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData191 : Decl (BitVec 64) :=
.function { name := "htr_pbytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body191_10, returnShape := (Flapjack.Shape.one) }
def original191 := Pancake.PanLang.declToHOL originalData191
def simplified191 := Pancake.PanLang.declToHOL simplifiedData191
end InitECandidate.Proofs.FrontendStages.Declarations
