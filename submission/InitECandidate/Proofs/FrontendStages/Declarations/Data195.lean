import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify179
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body195_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.var Flapjack.VarKind.local "limit_chunks", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body195_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body195_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body195_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body195_4 : Prog (BitVec 64) :=
.seq body195_2 body195_3

def body195_5 : Prog (BitVec 64) :=
.seq body195_1 body195_4

def body195_6 : Prog (BitVec 64) :=
.seq body195_0 body195_5

def body195_7 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body195_6

def body195_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body195_7

def body195_9 : Prog (BitVec 64) :=
.seq body195_0 body195_1

def body195_10 : Prog (BitVec 64) :=
.seq body195_9 body195_2

def body195_11 : Prog (BitVec 64) :=
.seq body195_10 body195_3

def body195_12 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body195_11

def body195_13 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body195_12

def originalData195 : Decl (BitVec 64) :=
.function { name := "htr_bytes_list", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit_chunks", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body195_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData195 : Decl (BitVec 64) :=
.function { name := "htr_bytes_list", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit_chunks", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body195_13, returnShape := (Flapjack.Shape.one) }
def original195 := Pancake.PanLang.declToHOL originalData195
def simplified195 := Pancake.PanLang.declToHOL simplifiedData195
end InitECandidate.Proofs.FrontendStages.Declarations
