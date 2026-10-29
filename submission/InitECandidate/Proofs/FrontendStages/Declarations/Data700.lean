import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify684
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body700_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body700_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body700_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body700_4 : Prog (BitVec 64) :=
.seq body700_2 body700_3

def body700_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_4 body700_1

def body700_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_7 : Prog (BitVec 64) :=
.seq body700_6 body700_3

def body700_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_7 body700_1

def body700_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_10 : Prog (BitVec 64) :=
.seq body700_9 body700_3

def body700_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_10 body700_1

def body700_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_13 : Prog (BitVec 64) :=
.seq body700_12 body700_3

def body700_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_13 body700_1

def body700_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_16 : Prog (BitVec 64) :=
.seq body700_15 body700_3

def body700_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_16 body700_1

def body700_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body700_0 body700_1

def body700_19 : Prog (BitVec 64) :=
.seq body700_18 body700_3

def body700_20 : Prog (BitVec 64) :=
.seq body700_17 body700_19

def body700_21 : Prog (BitVec 64) :=
.seq body700_14 body700_20

def body700_22 : Prog (BitVec 64) :=
.seq body700_11 body700_21

def body700_23 : Prog (BitVec 64) :=
.seq body700_8 body700_22

def body700_24 : Prog (BitVec 64) :=
.seq body700_5 body700_23

def body700_25 : Prog (BitVec 64) :=
.seq body700_5 body700_8

def body700_26 : Prog (BitVec 64) :=
.seq body700_25 body700_11

def body700_27 : Prog (BitVec 64) :=
.seq body700_26 body700_14

def body700_28 : Prog (BitVec 64) :=
.seq body700_27 body700_17

def body700_29 : Prog (BitVec 64) :=
.seq body700_28 body700_18

def body700_30 : Prog (BitVec 64) :=
.seq body700_29 body700_3

def originalData700 : Decl (BitVec 64) :=
.function { name := "bls_fp_lt_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body700_24, returnShape := (Flapjack.Shape.one) }
def simplifiedData700 : Decl (BitVec 64) :=
.function { name := "bls_fp_lt_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body700_30, returnShape := (Flapjack.Shape.one) }
def original700 := Pancake.PanLang.declToHOL originalData700
def simplified700 := Pancake.PanLang.declToHOL simplifiedData700
end InitECandidate.Proofs.FrontendStages.Declarations
