import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify31
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body47_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body47_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body47_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_0 body47_1

def body47_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body47_4 : Prog (BitVec 64) :=
.seq body47_2 body47_3

def body47_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_4 body47_1

def body47_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_0 body47_1

def body47_7 : Prog (BitVec 64) :=
.seq body47_6 body47_3

def body47_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_7 body47_1

def body47_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_0 body47_1

def body47_10 : Prog (BitVec 64) :=
.seq body47_9 body47_3

def body47_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_10 body47_1

def body47_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) body47_0 body47_1

def body47_13 : Prog (BitVec 64) :=
.seq body47_12 body47_3

def body47_14 : Prog (BitVec 64) :=
.seq body47_11 body47_13

def body47_15 : Prog (BitVec 64) :=
.seq body47_8 body47_14

def body47_16 : Prog (BitVec 64) :=
.seq body47_5 body47_15

def body47_17 : Prog (BitVec 64) :=
.seq body47_5 body47_8

def body47_18 : Prog (BitVec 64) :=
.seq body47_17 body47_11

def body47_19 : Prog (BitVec 64) :=
.seq body47_18 body47_12

def body47_20 : Prog (BitVec 64) :=
.seq body47_19 body47_3

def originalData47 : Decl (BitVec 64) :=
.function { name := "u256_lt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body47_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData47 : Decl (BitVec 64) :=
.function { name := "u256_lt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body47_20, returnShape := (Flapjack.Shape.one) }
def original47 := Pancake.PanLang.declToHOL originalData47
def simplified47 := Pancake.PanLang.declToHOL simplifiedData47
end InitECandidate.Proofs.FrontendStages.Declarations
