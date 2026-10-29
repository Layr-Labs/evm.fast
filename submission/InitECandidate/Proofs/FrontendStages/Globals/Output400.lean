import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data400
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody400_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "code_len",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody400_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "sl") (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody400_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sl", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_len")

def globalBody400_3 : Prog (BitVec 64) :=
.seq globalBody400_1 globalBody400_2

def globalBody400_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
          Flapjack.Exp.const 48#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "sl"]

def globalBody400_5 : Prog (BitVec 64) :=
.seq globalBody400_3 globalBody400_4

def globalBody400_6 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) globalBody400_5

def globalBody400_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody400_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody400_6 globalBody400_7

def globalBody400_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody400_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody400_11 : Prog (BitVec 64) :=
.seq globalBody400_9 globalBody400_10

def globalBody400_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody400_13 : Prog (BitVec 64) :=
.seq globalBody400_11 globalBody400_12

def globalBody400_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody400_15 : Prog (BitVec 64) :=
.seq globalBody400_13 globalBody400_14

def globalBody400_16 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody400_15

def globalBody400_17 : Prog (BitVec 64) :=
.seq globalBody400_8 globalBody400_16

def globalBody400_18 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "h",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64]),
  Flapjack.Exp.const 32#64]) globalBody400_17

def globalBody400_19 : Prog (BitVec 64) :=
.seq globalBody400_0 globalBody400_18

def globalBody400_20 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody400_19

def globalData400 : Decl (BitVec 64) :=
.function { name := "set_code", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("code_len", Flapjack.Shape.one)], body := globalBody400_20, returnShape := (Flapjack.Shape.one) }
def globalOutput400 := Pancake.PanLang.declToHOL globalData400
end InitECandidate.Proofs.FrontendStages.Declarations
