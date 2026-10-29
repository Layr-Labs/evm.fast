import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data458
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody458_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def globalBody458_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody458_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sq"))
  (Flapjack.Exp.const 0#64)) globalBody458_0 globalBody458_1

def globalBody458_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody458_4 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 3#64],
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sq"))
    (Flapjack.Exp.const 9#64)]) globalBody458_3

def globalBody458_5 : Prog (BitVec 64) :=
.seq globalBody458_2 globalBody458_4

def globalBody458_6 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody458_5

def globalBody458_7 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody458_6

def globalData458 : Decl (BitVec 64) :=
.function { name := "memory_gas_cost", inline := false, exported := false, params := [("size", Flapjack.Shape.one)], body := globalBody458_7, returnShape := (Flapjack.Shape.one) }
def globalOutput458 := Pancake.PanLang.declToHOL globalData458
end InitECandidate.Proofs.FrontendStages.Declarations
