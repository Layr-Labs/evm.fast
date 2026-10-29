import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify894
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body910_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body910_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 70#64)

def body910_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body910_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))
  (Flapjack.Exp.const 0#64)) body910_1 body910_2

def body910_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 71#64)

def body910_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) body910_4 body910_2

def body910_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body910_7 : Prog (BitVec 64) :=
.seq body910_5 body910_6

def body910_8 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_unchecked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "empty",
  Flapjack.Exp.const 0#64]) body910_7

def body910_9 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body910_8

def body910_10 : Prog (BitVec 64) :=
.seq body910_3 body910_9

def body910_11 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body910_10

def body910_12 : Prog (BitVec 64) :=
.seq body910_0 body910_11

def originalData910 : Decl (BitVec 64) :=
.function { name := "process_checked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one)], body := body910_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData910 : Decl (BitVec 64) :=
.function { name := "process_checked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one)], body := body910_12, returnShape := (Flapjack.Shape.one) }
def original910 := Pancake.PanLang.declToHOL originalData910
def simplified910 := Pancake.PanLang.declToHOL simplifiedData910
end InitECandidate.Proofs.FrontendStages.Declarations
