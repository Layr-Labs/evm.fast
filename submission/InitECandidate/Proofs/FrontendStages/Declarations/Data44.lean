import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify28
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body44_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def body44_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body44_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 0#64)) body44_0 body44_1

def body44_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def body44_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 1#64)) body44_3 body44_1

def body44_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def body44_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 2#64)) body44_5 body44_1

def body44_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def body44_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 3#64)) body44_7 body44_1

def body44_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body44_10 : Prog (BitVec 64) :=
.seq body44_8 body44_9

def body44_11 : Prog (BitVec 64) :=
.seq body44_6 body44_10

def body44_12 : Prog (BitVec 64) :=
.seq body44_4 body44_11

def body44_13 : Prog (BitVec 64) :=
.seq body44_2 body44_12

def body44_14 : Prog (BitVec 64) :=
.seq body44_2 body44_4

def body44_15 : Prog (BitVec 64) :=
.seq body44_14 body44_6

def body44_16 : Prog (BitVec 64) :=
.seq body44_15 body44_8

def body44_17 : Prog (BitVec 64) :=
.seq body44_16 body44_9

def originalData44 : Decl (BitVec 64) :=
.function { name := "u256_limb", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("i", Flapjack.Shape.one)], body := body44_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData44 : Decl (BitVec 64) :=
.function { name := "u256_limb", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("i", Flapjack.Shape.one)], body := body44_17, returnShape := (Flapjack.Shape.one) }
def original44 := Pancake.PanLang.declToHOL originalData44
def simplified44 := Pancake.PanLang.declToHOL simplifiedData44
end InitECandidate.Proofs.FrontendStages.Declarations
