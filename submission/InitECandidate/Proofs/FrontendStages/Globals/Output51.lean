import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data51
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate34
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody51_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody51_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody51_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 1#64)) globalBody51_0 globalBody51_1

def globalBody51_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody51_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 1#64)) globalBody51_3 globalBody51_1

def globalBody51_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2#64)

def globalBody51_6 : Prog (BitVec 64) :=
.seq globalBody51_4 globalBody51_5

def globalBody51_7 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody51_6

def globalBody51_8 : Prog (BitVec 64) :=
.seq globalBody51_2 globalBody51_7

def globalBody51_9 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody51_8

def globalData51 : Decl (BitVec 64) :=
.function { name := "u256_cmp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody51_9, returnShape := (Flapjack.Shape.one) }
def globalOutput51 := Pancake.PanLang.declToHOL globalData51
end InitECandidate.Proofs.FrontendStages.Declarations
