import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data586
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody586_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "csnap"), none)) "state_snapshot" []

def globalBody586_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody586_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mark_account_created" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody586_3 : Prog (BitVec 64) :=
.seq globalBody586_1 globalBody586_2

def globalBody586_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def globalBody586_5 : Prog (BitVec 64) :=
.seq globalBody586_3 globalBody586_4

def globalBody586_6 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 32#64])) globalBody586_5

def globalBody586_7 : Prog (BitVec 64) :=
.seq globalBody586_0 globalBody586_6

def globalBody586_8 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody586_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) globalBody586_7 globalBody586_8

def globalBody586_10 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 7#64)

def globalBody586_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 128#64]))) globalBody586_10 globalBody586_8

def globalBody586_12 : Prog (BitVec 64) :=
.seq globalBody586_9 globalBody586_11

def globalBody586_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_open"
  [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.var Flapjack.VarKind.local "kind"]

def globalBody586_14 : Prog (BitVec 64) :=
.seq globalBody586_12 globalBody586_13

def globalBody586_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "snapshot")

def globalBody586_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "csnap")

def globalBody586_17 : Prog (BitVec 64) :=
.seq globalBody586_15 globalBody586_16

def globalBody586_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child_mark")

def globalBody586_19 : Prog (BitVec 64) :=
.seq globalBody586_17 globalBody586_18

def globalBody586_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark")

def globalBody586_21 : Prog (BitVec 64) :=
.seq globalBody586_19 globalBody586_20

def globalBody586_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")

def globalBody586_23 : Prog (BitVec 64) :=
.seq globalBody586_21 globalBody586_22

def globalBody586_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out_start")

def globalBody586_25 : Prog (BitVec 64) :=
.seq globalBody586_23 globalBody586_24

def globalBody586_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out_size")

def globalBody586_27 : Prog (BitVec 64) :=
.seq globalBody586_25 globalBody586_26

def globalBody586_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "contract_address")

def globalBody586_29 : Prog (BitVec 64) :=
.seq globalBody586_27 globalBody586_28

def globalBody586_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_start" []

def globalBody586_31 : Prog (BitVec 64) :=
.seq globalBody586_29 globalBody586_30

def globalBody586_32 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody586_33 : Prog (BitVec 64) :=
.seq globalBody586_31 globalBody586_32

def globalBody586_34 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) globalBody586_33

def globalBody586_35 : Prog (BitVec 64) :=
.seq globalBody586_14 globalBody586_34

def globalBody586_36 : Prog (BitVec 64) :=
.dec ("csnap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody586_35

def globalData586 : Decl (BitVec 64) :=
.function { name := "start_child", inline := false, exported := false, params := [("cm", Flapjack.Shape.one), ("kind", Flapjack.Shape.one), ("child_mark", Flapjack.Shape.one),
  ("child_mem_mark", Flapjack.Shape.one), ("new_account_charged", Flapjack.Shape.one),
  ("out_start", Flapjack.Shape.one), ("out_size", Flapjack.Shape.one), ("contract_address", Flapjack.Shape.one)], body := globalBody586_36, returnShape := (Flapjack.Shape.one) }
def globalOutput586 := Pancake.PanLang.declToHOL globalData586
end InitECandidate.Proofs.FrontendStages.Declarations
