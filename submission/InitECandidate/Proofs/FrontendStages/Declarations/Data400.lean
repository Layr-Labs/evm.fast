import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify384
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body400_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "code_len",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body400_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "sl") (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body400_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sl", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_len")

def body400_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "sl"]

def body400_4 : Prog (BitVec 64) :=
.seq body400_2 body400_3

def body400_5 : Prog (BitVec 64) :=
.seq body400_1 body400_4

def body400_6 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) body400_5

def body400_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body400_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body400_6 body400_7

def body400_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body400_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body400_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body400_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body400_13 : Prog (BitVec 64) :=
.seq body400_11 body400_12

def body400_14 : Prog (BitVec 64) :=
.seq body400_10 body400_13

def body400_15 : Prog (BitVec 64) :=
.seq body400_9 body400_14

def body400_16 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body400_15

def body400_17 : Prog (BitVec 64) :=
.seq body400_8 body400_16

def body400_18 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash",
  Flapjack.Exp.const 32#64]) body400_17

def body400_19 : Prog (BitVec 64) :=
.seq body400_0 body400_18

def body400_20 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body400_19

def body400_21 : Prog (BitVec 64) :=
.seq body400_1 body400_2

def body400_22 : Prog (BitVec 64) :=
.seq body400_21 body400_3

def body400_23 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) body400_22

def body400_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body400_23 body400_7

def body400_25 : Prog (BitVec 64) :=
.seq body400_9 body400_10

def body400_26 : Prog (BitVec 64) :=
.seq body400_25 body400_11

def body400_27 : Prog (BitVec 64) :=
.seq body400_26 body400_12

def body400_28 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body400_27

def body400_29 : Prog (BitVec 64) :=
.seq body400_24 body400_28

def body400_30 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash",
  Flapjack.Exp.const 32#64]) body400_29

def body400_31 : Prog (BitVec 64) :=
.seq body400_0 body400_30

def body400_32 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body400_31

def originalData400 : Decl (BitVec 64) :=
.function { name := "set_code", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("code_len", Flapjack.Shape.one)], body := body400_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData400 : Decl (BitVec 64) :=
.function { name := "set_code", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("code_len", Flapjack.Shape.one)], body := body400_32, returnShape := (Flapjack.Shape.one) }
def original400 := Pancake.PanLang.declToHOL originalData400
def simplified400 := Pancake.PanLang.declToHOL simplifiedData400
end InitECandidate.Proofs.FrontendStages.Declarations
