import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify442
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body458_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def body458_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body458_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sq"))
  (Flapjack.Exp.const 0#64)) body458_0 body458_1

def body458_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body458_4 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 3#64],
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sq"))
    (Flapjack.Exp.const 9#64)]) body458_3

def body458_5 : Prog (BitVec 64) :=
.seq body458_2 body458_4

def body458_6 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "w"]) body458_5

def body458_7 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) body458_6

def originalData458 : Decl (BitVec 64) :=
.function { name := "memory_gas_cost", inline := false, exported := false, params := [("size", Flapjack.Shape.one)], body := body458_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData458 : Decl (BitVec 64) :=
.function { name := "memory_gas_cost", inline := false, exported := false, params := [("size", Flapjack.Shape.one)], body := body458_7, returnShape := (Flapjack.Shape.one) }
def original458 := Pancake.PanLang.declToHOL originalData458
def simplified458 := Pancake.PanLang.declToHOL simplifiedData458
end InitECandidate.Proofs.FrontendStages.Declarations
