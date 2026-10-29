import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify579
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body595_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 0#64]))

def body595_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 8#64]))

def body595_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "caller")

def body595_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body595_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "current_target")

def body595_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "gas")

def body595_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def body595_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "value")

def body595_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def body595_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data_n")

def body595_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_address")

def body595_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body595_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_n")

def body595_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 128#64]),
      Flapjack.Exp.const 1#64])

def body595_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "transfer")

def body595_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stat" (Flapjack.Exp.const 1#64)

def body595_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body595_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 144#64]))
  (Flapjack.Exp.const 0#64)) body595_15 body595_16

def body595_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stat")

def body595_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 168#64]))

def body595_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 176#64]))

def body595_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "disable_pre")

def body595_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body595_23 : Prog (BitVec 64) :=
.seq body595_21 body595_22

def body595_24 : Prog (BitVec 64) :=
.seq body595_20 body595_23

def body595_25 : Prog (BitVec 64) :=
.seq body595_19 body595_24

def body595_26 : Prog (BitVec 64) :=
.seq body595_18 body595_25

def body595_27 : Prog (BitVec 64) :=
.seq body595_17 body595_26

def body595_28 : Prog (BitVec 64) :=
.dec ("stat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "is_static") body595_27

def body595_29 : Prog (BitVec 64) :=
.seq body595_14 body595_28

def body595_30 : Prog (BitVec 64) :=
.seq body595_13 body595_29

def body595_31 : Prog (BitVec 64) :=
.seq body595_12 body595_30

def body595_32 : Prog (BitVec 64) :=
.seq body595_11 body595_31

def body595_33 : Prog (BitVec 64) :=
.seq body595_10 body595_32

def body595_34 : Prog (BitVec 64) :=
.seq body595_9 body595_33

def body595_35 : Prog (BitVec 64) :=
.seq body595_8 body595_34

def body595_36 : Prog (BitVec 64) :=
.seq body595_7 body595_35

def body595_37 : Prog (BitVec 64) :=
.seq body595_6 body595_36

def body595_38 : Prog (BitVec 64) :=
.seq body595_5 body595_37

def body595_39 : Prog (BitVec 64) :=
.seq body595_4 body595_38

def body595_40 : Prog (BitVec 64) :=
.seq body595_3 body595_39

def body595_41 : Prog (BitVec 64) :=
.seq body595_2 body595_40

def body595_42 : Prog (BitVec 64) :=
.seq body595_1 body595_41

def body595_43 : Prog (BitVec 64) :=
.seq body595_0 body595_42

def body595_44 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new_scratch") ([]) body595_43

def body595_45 : Prog (BitVec 64) :=
.dec ("pm") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body595_44

def body595_46 : Prog (BitVec 64) :=
.seq body595_0 body595_1

def body595_47 : Prog (BitVec 64) :=
.seq body595_46 body595_2

def body595_48 : Prog (BitVec 64) :=
.seq body595_47 body595_3

def body595_49 : Prog (BitVec 64) :=
.seq body595_48 body595_4

def body595_50 : Prog (BitVec 64) :=
.seq body595_49 body595_5

def body595_51 : Prog (BitVec 64) :=
.seq body595_50 body595_6

def body595_52 : Prog (BitVec 64) :=
.seq body595_51 body595_7

def body595_53 : Prog (BitVec 64) :=
.seq body595_52 body595_8

def body595_54 : Prog (BitVec 64) :=
.seq body595_53 body595_9

def body595_55 : Prog (BitVec 64) :=
.seq body595_54 body595_10

def body595_56 : Prog (BitVec 64) :=
.seq body595_55 body595_11

def body595_57 : Prog (BitVec 64) :=
.seq body595_56 body595_12

def body595_58 : Prog (BitVec 64) :=
.seq body595_57 body595_13

def body595_59 : Prog (BitVec 64) :=
.seq body595_58 body595_14

def body595_60 : Prog (BitVec 64) :=
.seq body595_17 body595_18

def body595_61 : Prog (BitVec 64) :=
.seq body595_60 body595_19

def body595_62 : Prog (BitVec 64) :=
.seq body595_61 body595_20

def body595_63 : Prog (BitVec 64) :=
.seq body595_62 body595_21

def body595_64 : Prog (BitVec 64) :=
.seq body595_63 body595_22

def body595_65 : Prog (BitVec 64) :=
.dec ("stat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "is_static") body595_64

def body595_66 : Prog (BitVec 64) :=
.seq body595_59 body595_65

def body595_67 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new_scratch") ([]) body595_66

def body595_68 : Prog (BitVec 64) :=
.dec ("pm") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body595_67

def originalData595 : Decl (BitVec 64) :=
.function { name := "child_message", inline := false, exported := false, params := [("caller", Flapjack.Shape.one), ("target", Flapjack.Shape.one), ("current_target", Flapjack.Shape.one),
  ("gas", Flapjack.Shape.one), ("reservoir", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one), ("code_address", Flapjack.Shape.one),
  ("code", Flapjack.Shape.one), ("code_n", Flapjack.Shape.one), ("transfer", Flapjack.Shape.one),
  ("is_static", Flapjack.Shape.one), ("disable_pre", Flapjack.Shape.one)], body := body595_45, returnShape := (Flapjack.Shape.one) }
def simplifiedData595 : Decl (BitVec 64) :=
.function { name := "child_message", inline := false, exported := false, params := [("caller", Flapjack.Shape.one), ("target", Flapjack.Shape.one), ("current_target", Flapjack.Shape.one),
  ("gas", Flapjack.Shape.one), ("reservoir", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one), ("code_address", Flapjack.Shape.one),
  ("code", Flapjack.Shape.one), ("code_n", Flapjack.Shape.one), ("transfer", Flapjack.Shape.one),
  ("is_static", Flapjack.Shape.one), ("disable_pre", Flapjack.Shape.one)], body := body595_68, returnShape := (Flapjack.Shape.one) }
def original595 := Pancake.PanLang.declToHOL originalData595
def simplified595 := Pancake.PanLang.declToHOL simplifiedData595
end InitECandidate.Proofs.FrontendStages.Declarations
