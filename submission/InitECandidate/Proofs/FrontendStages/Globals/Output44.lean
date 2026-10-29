import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data44
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate27
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody44_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def globalBody44_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody44_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 0#64)) globalBody44_0 globalBody44_1

def globalBody44_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def globalBody44_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 1#64)) globalBody44_3 globalBody44_1

def globalBody44_5 : Prog (BitVec 64) :=
.seq globalBody44_2 globalBody44_4

def globalBody44_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def globalBody44_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 2#64)) globalBody44_6 globalBody44_1

def globalBody44_8 : Prog (BitVec 64) :=
.seq globalBody44_5 globalBody44_7

def globalBody44_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def globalBody44_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 3#64)) globalBody44_9 globalBody44_1

def globalBody44_11 : Prog (BitVec 64) :=
.seq globalBody44_8 globalBody44_10

def globalBody44_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody44_13 : Prog (BitVec 64) :=
.seq globalBody44_11 globalBody44_12

def globalData44 : Decl (BitVec 64) :=
.function { name := "u256_limb", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("i", Flapjack.Shape.one)], body := globalBody44_13, returnShape := (Flapjack.Shape.one) }
def globalOutput44 := Pancake.PanLang.declToHOL globalData44
end InitECandidate.Proofs.FrontendStages.Declarations
