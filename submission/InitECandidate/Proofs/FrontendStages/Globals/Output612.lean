import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data612
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody612_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1352829926#64)

def globalBody612_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody612_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody612_0 globalBody612_1

def globalBody612_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1548603684#64)

def globalBody612_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody612_3 globalBody612_1

def globalBody612_5 : Prog (BitVec 64) :=
.seq globalBody612_2 globalBody612_4

def globalBody612_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1836072691#64)

def globalBody612_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody612_6 globalBody612_1

def globalBody612_8 : Prog (BitVec 64) :=
.seq globalBody612_5 globalBody612_7

def globalBody612_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2053994217#64)

def globalBody612_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody612_9 globalBody612_1

def globalBody612_11 : Prog (BitVec 64) :=
.seq globalBody612_8 globalBody612_10

def globalBody612_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody612_13 : Prog (BitVec 64) :=
.seq globalBody612_11 globalBody612_12

def globalData612 : Decl (BitVec 64) :=
.function { name := "rmd_kp", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := globalBody612_13, returnShape := (Flapjack.Shape.one) }
def globalOutput612 := Pancake.PanLang.declToHOL globalData612
end InitECandidate.Proofs.FrontendStages.Declarations
