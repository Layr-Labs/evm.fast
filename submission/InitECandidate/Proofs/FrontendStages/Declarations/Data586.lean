import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify570
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body586_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "csnap"), none)) "state_snapshot" []

def body586_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body586_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mark_account_created" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body586_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "target"]

def body586_4 : Prog (BitVec 64) :=
.seq body586_2 body586_3

def body586_5 : Prog (BitVec 64) :=
.seq body586_1 body586_4

def body586_6 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 32#64])) body586_5

def body586_7 : Prog (BitVec 64) :=
.seq body586_0 body586_6

def body586_8 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body586_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body586_7 body586_8

def body586_10 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 7#64)

def body586_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 128#64]))) body586_10 body586_8

def body586_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_open"
  [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.var Flapjack.VarKind.local "kind"]

def body586_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "snapshot")

def body586_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "csnap")

def body586_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child_mark")

def body586_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark")

def body586_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")

def body586_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out_start")

def body586_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out_size")

def body586_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "contract_address")

def body586_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_start" []

def body586_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body586_23 : Prog (BitVec 64) :=
.seq body586_21 body586_22

def body586_24 : Prog (BitVec 64) :=
.seq body586_20 body586_23

def body586_25 : Prog (BitVec 64) :=
.seq body586_19 body586_24

def body586_26 : Prog (BitVec 64) :=
.seq body586_18 body586_25

def body586_27 : Prog (BitVec 64) :=
.seq body586_17 body586_26

def body586_28 : Prog (BitVec 64) :=
.seq body586_16 body586_27

def body586_29 : Prog (BitVec 64) :=
.seq body586_15 body586_28

def body586_30 : Prog (BitVec 64) :=
.seq body586_14 body586_29

def body586_31 : Prog (BitVec 64) :=
.seq body586_13 body586_30

def body586_32 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body586_31

def body586_33 : Prog (BitVec 64) :=
.seq body586_8 body586_32

def body586_34 : Prog (BitVec 64) :=
.seq body586_8 body586_33

def body586_35 : Prog (BitVec 64) :=
.seq body586_12 body586_34

def body586_36 : Prog (BitVec 64) :=
.seq body586_8 body586_35

def body586_37 : Prog (BitVec 64) :=
.seq body586_11 body586_36

def body586_38 : Prog (BitVec 64) :=
.seq body586_9 body586_37

def body586_39 : Prog (BitVec 64) :=
.dec ("csnap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body586_38

def body586_40 : Prog (BitVec 64) :=
.seq body586_1 body586_2

def body586_41 : Prog (BitVec 64) :=
.seq body586_40 body586_3

def body586_42 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 32#64])) body586_41

def body586_43 : Prog (BitVec 64) :=
.seq body586_0 body586_42

def body586_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body586_43 body586_8

def body586_45 : Prog (BitVec 64) :=
.seq body586_44 body586_11

def body586_46 : Prog (BitVec 64) :=
.seq body586_45 body586_12

def body586_47 : Prog (BitVec 64) :=
.seq body586_13 body586_14

def body586_48 : Prog (BitVec 64) :=
.seq body586_47 body586_15

def body586_49 : Prog (BitVec 64) :=
.seq body586_48 body586_16

def body586_50 : Prog (BitVec 64) :=
.seq body586_49 body586_17

def body586_51 : Prog (BitVec 64) :=
.seq body586_50 body586_18

def body586_52 : Prog (BitVec 64) :=
.seq body586_51 body586_19

def body586_53 : Prog (BitVec 64) :=
.seq body586_52 body586_20

def body586_54 : Prog (BitVec 64) :=
.seq body586_53 body586_21

def body586_55 : Prog (BitVec 64) :=
.seq body586_54 body586_22

def body586_56 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body586_55

def body586_57 : Prog (BitVec 64) :=
.seq body586_46 body586_56

def body586_58 : Prog (BitVec 64) :=
.dec ("csnap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body586_57

def originalData586 : Decl (BitVec 64) :=
.function { name := "start_child", inline := false, exported := false, params := [("cm", Flapjack.Shape.one), ("kind", Flapjack.Shape.one), ("child_mark", Flapjack.Shape.one),
  ("child_mem_mark", Flapjack.Shape.one), ("new_account_charged", Flapjack.Shape.one),
  ("out_start", Flapjack.Shape.one), ("out_size", Flapjack.Shape.one), ("contract_address", Flapjack.Shape.one)], body := body586_39, returnShape := (Flapjack.Shape.one) }
def simplifiedData586 : Decl (BitVec 64) :=
.function { name := "start_child", inline := false, exported := false, params := [("cm", Flapjack.Shape.one), ("kind", Flapjack.Shape.one), ("child_mark", Flapjack.Shape.one),
  ("child_mem_mark", Flapjack.Shape.one), ("new_account_charged", Flapjack.Shape.one),
  ("out_start", Flapjack.Shape.one), ("out_size", Flapjack.Shape.one), ("contract_address", Flapjack.Shape.one)], body := body586_58, returnShape := (Flapjack.Shape.one) }
def original586 := Pancake.PanLang.declToHOL originalData586
def simplified586 := Pancake.PanLang.declToHOL simplifiedData586
end InitECandidate.Proofs.FrontendStages.Declarations
