import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify33
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body49_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body49_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body49_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_0 body49_1

def body49_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body49_4 : Prog (BitVec 64) :=
.seq body49_2 body49_3

def body49_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_4 body49_1

def body49_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_0 body49_1

def body49_7 : Prog (BitVec 64) :=
.seq body49_6 body49_3

def body49_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_7 body49_1

def body49_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_0 body49_1

def body49_10 : Prog (BitVec 64) :=
.seq body49_9 body49_3

def body49_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_10 body49_1

def body49_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body49_0 body49_1

def body49_13 : Prog (BitVec 64) :=
.seq body49_12 body49_3

def body49_14 : Prog (BitVec 64) :=
.seq body49_11 body49_13

def body49_15 : Prog (BitVec 64) :=
.seq body49_8 body49_14

def body49_16 : Prog (BitVec 64) :=
.seq body49_5 body49_15

def body49_17 : Prog (BitVec 64) :=
.seq body49_5 body49_8

def body49_18 : Prog (BitVec 64) :=
.seq body49_17 body49_11

def body49_19 : Prog (BitVec 64) :=
.seq body49_18 body49_12

def body49_20 : Prog (BitVec 64) :=
.seq body49_19 body49_3

def originalData49 : Decl (BitVec 64) :=
.function { name := "u256_slt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body49_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData49 : Decl (BitVec 64) :=
.function { name := "u256_slt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body49_20, returnShape := (Flapjack.Shape.one) }
def original49 := Pancake.PanLang.declToHOL originalData49
def simplified49 := Pancake.PanLang.declToHOL simplifiedData49
end InitECandidate.Proofs.FrontendStages.Declarations
