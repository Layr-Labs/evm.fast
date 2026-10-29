import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data615
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody615_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody615_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody615_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody615_0 globalBody615_1

def globalBody615_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1518500249#64)

def globalBody615_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody615_3 globalBody615_1

def globalBody615_5 : Prog (BitVec 64) :=
.seq globalBody615_2 globalBody615_4

def globalBody615_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1859775393#64)

def globalBody615_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody615_6 globalBody615_1

def globalBody615_8 : Prog (BitVec 64) :=
.seq globalBody615_5 globalBody615_7

def globalBody615_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2400959708#64)

def globalBody615_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody615_9 globalBody615_1

def globalBody615_11 : Prog (BitVec 64) :=
.seq globalBody615_8 globalBody615_10

def globalBody615_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2840853838#64)

def globalBody615_13 : Prog (BitVec 64) :=
.seq globalBody615_11 globalBody615_12

def globalData615 : Decl (BitVec 64) :=
.function { name := "rmd_k", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := globalBody615_13, returnShape := (Flapjack.Shape.one) }
def globalOutput615 := Pancake.PanLang.declToHOL globalData615
end InitECandidate.Proofs.FrontendStages.Declarations
