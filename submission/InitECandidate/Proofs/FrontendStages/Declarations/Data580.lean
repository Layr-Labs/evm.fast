import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify564
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body580_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" []

def body580_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_halt" [Flapjack.Exp.var Flapjack.VarKind.local "err"]

def body580_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")

def body580_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 0#64)

def body580_4 : Prog (BitVec 64) :=
.seq body580_2 body580_3

def body580_5 : Prog (BitVec 64) :=
.seq body580_1 body580_4

def body580_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "err")

def body580_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 1#64)) body580_5 body580_6

def body580_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 1#64)

def body580_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body580_10 : Prog (BitVec 64) :=
.seq body580_8 body580_9

def body580_11 : Prog (BitVec 64) :=
.seq body580_7 body580_10

def body580_12 : Prog (BitVec 64) :=
.seq body580_0 body580_11

def body580_13 : Prog (BitVec 64) :=
.seq body580_1 body580_2

def body580_14 : Prog (BitVec 64) :=
.seq body580_13 body580_3

def body580_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 1#64)) body580_14 body580_6

def body580_16 : Prog (BitVec 64) :=
.seq body580_0 body580_15

def body580_17 : Prog (BitVec 64) :=
.seq body580_16 body580_8

def body580_18 : Prog (BitVec 64) :=
.seq body580_17 body580_9

def originalData580 : Decl (BitVec 64) :=
.function { name := "frame_exception", inline := false, exported := false, params := [("err", Flapjack.Shape.one)], body := body580_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData580 : Decl (BitVec 64) :=
.function { name := "frame_exception", inline := false, exported := false, params := [("err", Flapjack.Shape.one)], body := body580_18, returnShape := (Flapjack.Shape.one) }
def original580 := Pancake.PanLang.declToHOL originalData580
def simplified580 := Pancake.PanLang.declToHOL simplifiedData580
end InitECandidate.Proofs.FrontendStages.Declarations
