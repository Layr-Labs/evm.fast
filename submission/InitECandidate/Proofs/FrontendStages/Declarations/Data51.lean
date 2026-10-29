import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify35
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body51_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body51_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body51_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 1#64)) body51_0 body51_1

def body51_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body51_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 1#64)) body51_3 body51_1

def body51_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2#64)

def body51_6 : Prog (BitVec 64) :=
.seq body51_4 body51_5

def body51_7 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body51_6

def body51_8 : Prog (BitVec 64) :=
.seq body51_2 body51_7

def body51_9 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body51_8

def originalData51 : Decl (BitVec 64) :=
.function { name := "u256_cmp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body51_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData51 : Decl (BitVec 64) :=
.function { name := "u256_cmp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body51_9, returnShape := (Flapjack.Shape.one) }
def original51 := Pancake.PanLang.declToHOL originalData51
def simplified51 := Pancake.PanLang.declToHOL simplifiedData51
end InitECandidate.Proofs.FrontendStages.Declarations
