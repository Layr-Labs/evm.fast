import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify856
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body872_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body872_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 70#64)

def body872_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body872_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))
  (Flapjack.Exp.const 0#64)) body872_1 body872_2

def body872_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 71#64)

def body872_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) body872_4 body872_2

def body872_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body872_7 : Prog (BitVec 64) :=
.seq body872_5 body872_6

def body872_8 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_unchecked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "empty",
  Flapjack.Exp.const 0#64]) body872_7

def body872_9 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body872_8

def body872_10 : Prog (BitVec 64) :=
.seq body872_3 body872_9

def body872_11 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body872_10

def body872_12 : Prog (BitVec 64) :=
.seq body872_0 body872_11

def originalData872 : Decl (BitVec 64) :=
.function { name := "process_checked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one)], body := body872_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData872 : Decl (BitVec 64) :=
.function { name := "process_checked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one)], body := body872_12, returnShape := (Flapjack.Shape.one) }
def original872 := Pancake.PanLang.declToHOL originalData872
def simplified872 := Pancake.PanLang.declToHOL simplifiedData872
end InitECandidate.Proofs.FrontendStages.Declarations
