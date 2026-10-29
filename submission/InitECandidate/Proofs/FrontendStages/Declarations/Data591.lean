import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify575
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body591_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body591_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mark_account_created" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body591_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body591_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ev" (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body591_4 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "state_restore"
              [Flapjack.Exp.var Flapjack.VarKind.local "snapshot"])
            (Flapjack.Prog.seq (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" [])
              (Flapjack.Prog.seq
                (Flapjack.Prog.call (some (none, none)) "frame_halt" [Flapjack.Exp.var Flapjack.VarKind.local "err"])
                (Flapjack.Prog.seq
                  (Flapjack.Prog.store
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
                    (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty"))
                  (Flapjack.Prog.store
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
                    (Flapjack.Exp.const 0#64))))))))
  "create_finish" [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body591_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ev" (Flapjack.Exp.var Flapjack.VarKind.local "parent")

def body591_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body591_7 : Prog (BitVec 64) :=
.seq body591_5 body591_6

def body591_8 : Prog (BitVec 64) :=
.seq body591_4 body591_7

def body591_9 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body591_8

def body591_10 : Prog (BitVec 64) :=
.seq body591_3 body591_9

def body591_11 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body591_10

def body591_12 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body591_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body591_11 body591_12

def body591_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_restore" [Flapjack.Exp.var Flapjack.VarKind.local "snapshot"]

def body591_15 : Prog (BitVec 64) :=
.seq body591_14 body591_6

def body591_16 : Prog (BitVec 64) :=
.seq body591_13 body591_15

def body591_17 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("process_message") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) body591_16

def body591_18 : Prog (BitVec 64) :=
.seq body591_2 body591_17

def body591_19 : Prog (BitVec 64) :=
.seq body591_1 body591_18

def body591_20 : Prog (BitVec 64) :=
.seq body591_0 body591_19

def body591_21 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) body591_20

def body591_22 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body591_21

def body591_23 : Prog (BitVec 64) :=
.seq body591_0 body591_1

def body591_24 : Prog (BitVec 64) :=
.seq body591_23 body591_2

def body591_25 : Prog (BitVec 64) :=
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
                  [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
                (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")))
            (Flapjack.Prog.store
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
              (Flapjack.Exp.const 0#64)))))
  "create_finish" [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body591_26 : Prog (BitVec 64) :=
.seq body591_25 body591_5

def body591_27 : Prog (BitVec 64) :=
.seq body591_26 body591_6

def body591_28 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body591_27

def body591_29 : Prog (BitVec 64) :=
.seq body591_3 body591_28

def body591_30 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body591_29

def body591_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body591_30 body591_12

def body591_32 : Prog (BitVec 64) :=
.seq body591_31 body591_14

def body591_33 : Prog (BitVec 64) :=
.seq body591_32 body591_6

def body591_34 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("process_message") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) body591_33

def body591_35 : Prog (BitVec 64) :=
.seq body591_24 body591_34

def body591_36 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) body591_35

def body591_37 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body591_36

def originalData591 : Decl (BitVec 64) :=
.function { name := "process_create_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body591_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData591 : Decl (BitVec 64) :=
.function { name := "process_create_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body591_37, returnShape := (Flapjack.Shape.one) }
def original591 := Pancake.PanLang.declToHOL originalData591
def simplified591 := Pancake.PanLang.declToHOL simplifiedData591
end InitECandidate.Proofs.FrontendStages.Declarations
