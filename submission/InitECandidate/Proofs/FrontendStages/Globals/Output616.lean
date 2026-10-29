import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data616
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody616_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1352829926#64)

def globalBody616_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody616_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody616_0 globalBody616_1

def globalBody616_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1548603684#64)

def globalBody616_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody616_3 globalBody616_1

def globalBody616_5 : Prog (BitVec 64) :=
.seq globalBody616_2 globalBody616_4

def globalBody616_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1836072691#64)

def globalBody616_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody616_6 globalBody616_1

def globalBody616_8 : Prog (BitVec 64) :=
.seq globalBody616_5 globalBody616_7

def globalBody616_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2053994217#64)

def globalBody616_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody616_9 globalBody616_1

def globalBody616_11 : Prog (BitVec 64) :=
.seq globalBody616_8 globalBody616_10

def globalBody616_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody616_13 : Prog (BitVec 64) :=
.seq globalBody616_11 globalBody616_12

def globalData616 : Decl (BitVec 64) :=
.function { name := "rmd_kp", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := globalBody616_13, returnShape := (Flapjack.Shape.one) }
def globalOutput616 := Pancake.PanLang.declToHOL globalData616
end InitECandidate.Proofs.FrontendStages.Declarations
