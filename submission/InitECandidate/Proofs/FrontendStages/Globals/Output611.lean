import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data611
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody611_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody611_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody611_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody611_0 globalBody611_1

def globalBody611_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1518500249#64)

def globalBody611_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody611_3 globalBody611_1

def globalBody611_5 : Prog (BitVec 64) :=
.seq globalBody611_2 globalBody611_4

def globalBody611_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1859775393#64)

def globalBody611_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody611_6 globalBody611_1

def globalBody611_8 : Prog (BitVec 64) :=
.seq globalBody611_5 globalBody611_7

def globalBody611_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2400959708#64)

def globalBody611_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody611_9 globalBody611_1

def globalBody611_11 : Prog (BitVec 64) :=
.seq globalBody611_8 globalBody611_10

def globalBody611_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2840853838#64)

def globalBody611_13 : Prog (BitVec 64) :=
.seq globalBody611_11 globalBody611_12

def globalData611 : Decl (BitVec 64) :=
.function { name := "rmd_k", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := globalBody611_13, returnShape := (Flapjack.Shape.one) }
def globalOutput611 := Pancake.PanLang.declToHOL globalData611
end InitECandidate.Proofs.FrontendStages.Declarations
