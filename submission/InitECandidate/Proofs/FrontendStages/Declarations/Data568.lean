import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify552
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body568_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body568_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body568_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body568_0 body568_1

def body568_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address")

def body568_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.var Flapjack.VarKind.global "transfer_topic",
    Flapjack.Exp.const 32#64]

def body568_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 12#64]

def body568_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 44#64],
    Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 20#64]

def body568_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 64#64],
    Flapjack.Exp.const 12#64]

def body568_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 76#64],
    Flapjack.Exp.var Flapjack.VarKind.local "recipient", Flapjack.Exp.const 20#64]

def body568_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "topics")

def body568_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 3#64)

def body568_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "data"]

def body568_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def body568_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 32#64)

def body568_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "log_append"
  [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.var Flapjack.VarKind.local "log"]

def body568_15 : Prog (BitVec 64) :=
.seq body568_14 body568_0

def body568_16 : Prog (BitVec 64) :=
.seq body568_13 body568_15

def body568_17 : Prog (BitVec 64) :=
.seq body568_12 body568_16

def body568_18 : Prog (BitVec 64) :=
.seq body568_11 body568_17

def body568_19 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body568_18

def body568_20 : Prog (BitVec 64) :=
.seq body568_10 body568_19

def body568_21 : Prog (BitVec 64) :=
.seq body568_9 body568_20

def body568_22 : Prog (BitVec 64) :=
.seq body568_8 body568_21

def body568_23 : Prog (BitVec 64) :=
.seq body568_7 body568_22

def body568_24 : Prog (BitVec 64) :=
.seq body568_6 body568_23

def body568_25 : Prog (BitVec 64) :=
.seq body568_5 body568_24

def body568_26 : Prog (BitVec 64) :=
.seq body568_4 body568_25

def body568_27 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body568_26

def body568_28 : Prog (BitVec 64) :=
.seq body568_3 body568_27

def body568_29 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body568_28

def body568_30 : Prog (BitVec 64) :=
.seq body568_2 body568_29

def body568_31 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body568_30

def body568_32 : Prog (BitVec 64) :=
.seq body568_4 body568_5

def body568_33 : Prog (BitVec 64) :=
.seq body568_32 body568_6

def body568_34 : Prog (BitVec 64) :=
.seq body568_33 body568_7

def body568_35 : Prog (BitVec 64) :=
.seq body568_34 body568_8

def body568_36 : Prog (BitVec 64) :=
.seq body568_35 body568_9

def body568_37 : Prog (BitVec 64) :=
.seq body568_36 body568_10

def body568_38 : Prog (BitVec 64) :=
.seq body568_11 body568_12

def body568_39 : Prog (BitVec 64) :=
.seq body568_38 body568_13

def body568_40 : Prog (BitVec 64) :=
.seq body568_39 body568_14

def body568_41 : Prog (BitVec 64) :=
.seq body568_40 body568_0

def body568_42 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body568_41

def body568_43 : Prog (BitVec 64) :=
.seq body568_37 body568_42

def body568_44 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body568_43

def body568_45 : Prog (BitVec 64) :=
.seq body568_3 body568_44

def body568_46 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body568_45

def body568_47 : Prog (BitVec 64) :=
.seq body568_2 body568_46

def body568_48 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body568_47

def originalData568 : Decl (BitVec 64) :=
.function { name := "emit_transfer_log", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body568_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData568 : Decl (BitVec 64) :=
.function { name := "emit_transfer_log", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body568_48, returnShape := (Flapjack.Shape.one) }
def original568 := Pancake.PanLang.declToHOL originalData568
def simplified568 := Pancake.PanLang.declToHOL simplifiedData568
end InitECandidate.Proofs.FrontendStages.Declarations
