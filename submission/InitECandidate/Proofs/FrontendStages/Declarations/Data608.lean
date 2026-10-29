import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify592
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body608_0 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body608_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 96#64]

def body608_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 12#64)

def body608_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64]))

def body608_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 40#64]))

def body608_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")

def body608_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body608_7 : Prog (BitVec 64) :=
.seq body608_5 body608_6

def body608_8 : Prog (BitVec 64) :=
.seq body608_4 body608_7

def body608_9 : Prog (BitVec 64) :=
.seq body608_3 body608_8

def body608_10 : Prog (BitVec 64) :=
.seq body608_2 body608_9

def body608_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dep") (Flapjack.Exp.const 0#64)) body608_10 body608_0

def body608_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "frame"), none)) "process_create_message"
  [Flapjack.Exp.var Flapjack.VarKind.local "msg"]

def body608_13 : Prog (BitVec 64) :=
.seq body608_11 body608_12

def body608_14 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])]) body608_13

def body608_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "frame"), none)) "process_message"
  [Flapjack.Exp.var Flapjack.VarKind.local "msg"]

def body608_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.const 0#64)) body608_14 body608_15

def body608_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 64#64]))

def body608_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 160#64]))

def body608_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 120#64]))

def body608_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 128#64]))

def body608_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 72#64]))

def body608_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 184#64]))

def body608_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "fsg",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 200#64])])

def body608_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 88#64]))

def body608_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 136#64]))

def body608_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rc" (Flapjack.Exp.const 0#64)

def body608_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "rc") (Flapjack.Exp.const 0#64)) body608_26 body608_0

def body608_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rc")

def body608_29 : Prog (BitVec 64) :=
.seq body608_27 body608_28

def body608_30 : Prog (BitVec 64) :=
.dec ("rc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 96#64])) body608_29

def body608_31 : Prog (BitVec 64) :=
.seq body608_25 body608_30

def body608_32 : Prog (BitVec 64) :=
.seq body608_24 body608_31

def body608_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body608_32 body608_0

def body608_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 208#64]))

def body608_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 224#64]))

def body608_36 : Prog (BitVec 64) :=
.seq body608_35 body608_6

def body608_37 : Prog (BitVec 64) :=
.seq body608_34 body608_36

def body608_38 : Prog (BitVec 64) :=
.seq body608_33 body608_37

def body608_39 : Prog (BitVec 64) :=
.seq body608_23 body608_38

def body608_40 : Prog (BitVec 64) :=
.decCall ("fsg") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.var Flapjack.VarKind.local "frame"]) body608_39

def body608_41 : Prog (BitVec 64) :=
.seq body608_22 body608_40

def body608_42 : Prog (BitVec 64) :=
.seq body608_21 body608_41

def body608_43 : Prog (BitVec 64) :=
.seq body608_20 body608_42

def body608_44 : Prog (BitVec 64) :=
.seq body608_19 body608_43

def body608_45 : Prog (BitVec 64) :=
.seq body608_18 body608_44

def body608_46 : Prog (BitVec 64) :=
.seq body608_17 body608_45

def body608_47 : Prog (BitVec 64) :=
.seq body608_16 body608_46

def body608_48 : Prog (BitVec 64) :=
.dec ("frame") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body608_47

def body608_49 : Prog (BitVec 64) :=
.seq body608_1 body608_48

def body608_50 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body608_49

def body608_51 : Prog (BitVec 64) :=
.seq body608_0 body608_50

def body608_52 : Prog (BitVec 64) :=
.seq body608_2 body608_3

def body608_53 : Prog (BitVec 64) :=
.seq body608_52 body608_4

def body608_54 : Prog (BitVec 64) :=
.seq body608_53 body608_5

def body608_55 : Prog (BitVec 64) :=
.seq body608_54 body608_6

def body608_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dep") (Flapjack.Exp.const 0#64)) body608_55 body608_0

def body608_57 : Prog (BitVec 64) :=
.seq body608_56 body608_12

def body608_58 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])]) body608_57

def body608_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.const 0#64)) body608_58 body608_15

def body608_60 : Prog (BitVec 64) :=
.seq body608_59 body608_17

def body608_61 : Prog (BitVec 64) :=
.seq body608_60 body608_18

def body608_62 : Prog (BitVec 64) :=
.seq body608_61 body608_19

def body608_63 : Prog (BitVec 64) :=
.seq body608_62 body608_20

def body608_64 : Prog (BitVec 64) :=
.seq body608_63 body608_21

def body608_65 : Prog (BitVec 64) :=
.seq body608_64 body608_22

def body608_66 : Prog (BitVec 64) :=
.seq body608_24 body608_25

def body608_67 : Prog (BitVec 64) :=
.seq body608_66 body608_30

def body608_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body608_67 body608_0

def body608_69 : Prog (BitVec 64) :=
.seq body608_23 body608_68

def body608_70 : Prog (BitVec 64) :=
.seq body608_69 body608_34

def body608_71 : Prog (BitVec 64) :=
.seq body608_70 body608_35

def body608_72 : Prog (BitVec 64) :=
.seq body608_71 body608_6

def body608_73 : Prog (BitVec 64) :=
.decCall ("fsg") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.var Flapjack.VarKind.local "frame"]) body608_72

def body608_74 : Prog (BitVec 64) :=
.seq body608_65 body608_73

def body608_75 : Prog (BitVec 64) :=
.dec ("frame") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body608_74

def body608_76 : Prog (BitVec 64) :=
.seq body608_1 body608_75

def body608_77 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body608_76

def originalData608 : Decl (BitVec 64) :=
.function { name := "process_message_call", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body608_51, returnShape := (Flapjack.Shape.one) }
def simplifiedData608 : Decl (BitVec 64) :=
.function { name := "process_message_call", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body608_77, returnShape := (Flapjack.Shape.one) }
def original608 := Pancake.PanLang.declToHOL originalData608
def simplified608 := Pancake.PanLang.declToHOL simplifiedData608
end InitECandidate.Proofs.FrontendStages.Declarations
