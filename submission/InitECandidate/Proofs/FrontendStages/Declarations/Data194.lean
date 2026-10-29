import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify178
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body194_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def body194_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body194_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body194_3 : Prog (BitVec 64) :=
.seq body194_1 body194_2

def body194_4 : Prog (BitVec 64) :=
.seq body194_0 body194_3

def body194_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body194_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 32#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body194_4 body194_5

def body194_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pk"), Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body194_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body194_9 : Prog (BitVec 64) :=
.seq body194_8 body194_2

def body194_10 : Prog (BitVec 64) :=
.seq body194_7 body194_9

def body194_11 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body194_10

def body194_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body194_11

def body194_13 : Prog (BitVec 64) :=
.seq body194_6 body194_12

def body194_14 : Prog (BitVec 64) :=
.seq body194_0 body194_1

def body194_15 : Prog (BitVec 64) :=
.seq body194_14 body194_2

def body194_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 32#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body194_15 body194_5

def body194_17 : Prog (BitVec 64) :=
.seq body194_7 body194_8

def body194_18 : Prog (BitVec 64) :=
.seq body194_17 body194_2

def body194_19 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("pack_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body194_18

def body194_20 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body194_19

def body194_21 : Prog (BitVec 64) :=
.seq body194_16 body194_20

def originalData194 : Decl (BitVec 64) :=
.function { name := "htr_bytes_vector", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body194_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData194 : Decl (BitVec 64) :=
.function { name := "htr_bytes_vector", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body194_21, returnShape := (Flapjack.Shape.one) }
def original194 := Pancake.PanLang.declToHOL originalData194
def simplified194 := Pancake.PanLang.declToHOL simplifiedData194
end InitECandidate.Proofs.FrontendStages.Declarations
