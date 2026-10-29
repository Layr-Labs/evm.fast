import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data591
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody591_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody591_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mark_account_created" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody591_2 : Prog (BitVec 64) :=
.seq globalBody591_0 globalBody591_1

def globalBody591_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody591_4 : Prog (BitVec 64) :=
.seq globalBody591_2 globalBody591_3

def globalBody591_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody591_6 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err",
          Flapjack.Prog.seq
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.call (some (none, none)) "state_restore"
                    [Flapjack.Exp.var Flapjack.VarKind.local "snapshot"])
                  (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" []))
                (Flapjack.Prog.call (some (none, none)) "frame_halt" [Flapjack.Exp.var Flapjack.VarKind.local "err"]))
              (Flapjack.Prog.store
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
                    Flapjack.Exp.const 120#64])
                (Flapjack.Exp.load Flapjack.Shape.one
                  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]))))
            (Flapjack.Prog.store
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.load Flapjack.Shape.one
                    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
                  Flapjack.Exp.const 128#64])
              (Flapjack.Exp.const 0#64)))))
  "create_finish" [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def globalBody591_7 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "parent")

def globalBody591_8 : Prog (BitVec 64) :=
.seq globalBody591_6 globalBody591_7

def globalBody591_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody591_10 : Prog (BitVec 64) :=
.seq globalBody591_8 globalBody591_9

def globalBody591_11 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody591_10

def globalBody591_12 : Prog (BitVec 64) :=
.seq globalBody591_5 globalBody591_11

def globalBody591_13 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])) globalBody591_12

def globalBody591_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody591_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) globalBody591_13 globalBody591_14

def globalBody591_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_restore" [Flapjack.Exp.var Flapjack.VarKind.local "snapshot"]

def globalBody591_17 : Prog (BitVec 64) :=
.seq globalBody591_15 globalBody591_16

def globalBody591_18 : Prog (BitVec 64) :=
.seq globalBody591_17 globalBody591_9

def globalBody591_19 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("process_message") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) globalBody591_18

def globalBody591_20 : Prog (BitVec 64) :=
.seq globalBody591_4 globalBody591_19

def globalBody591_21 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) globalBody591_20

def globalBody591_22 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) globalBody591_21

def globalData591 : Decl (BitVec 64) :=
.function { name := "process_create_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := globalBody591_22, returnShape := (Flapjack.Shape.one) }
def globalOutput591 := Pancake.PanLang.declToHOL globalData591
end InitECandidate.Proofs.FrontendStages.Declarations
