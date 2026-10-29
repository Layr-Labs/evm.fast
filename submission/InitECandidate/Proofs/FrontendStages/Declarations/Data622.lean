import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify606
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body622_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body622_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body622_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma") (Flapjack.Exp.const 0#64)) body622_0 body622_1

def body622_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "b2_sigma"), none)) "alloc" [Flapjack.Exp.const 80#64]

def body622_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "b2_iv"), none)) "alloc" [Flapjack.Exp.const 64#64]

def body622_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "b2_v"), none)) "alloc" [Flapjack.Exp.const 128#64]

def body622_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 18364758544493064720#64)

def body622_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 3853709921291437230#64)

def body622_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 5266788149650328715#64)

def body622_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 10305543691612001175#64)

def body622_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 15242093322790139145#64)

def body622_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 10515720223929181890#64)

def body622_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 13270197634454188380#64)

def body622_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 11702690517083809725#64)

def body622_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 6503616966983130870#64)

def body622_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_sigma", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 991893350865389610#64)

def body622_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 7640891576956012808#64)

def body622_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 13503953896175478587#64)

def body622_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 4354685564936845355#64)

def body622_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 11912009170470909681#64)

def body622_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 5840696475078001361#64)

def body622_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 11170449401992604703#64)

def body622_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 2270897969802886507#64)

def body622_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "b2_iv", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 6620516959819538809#64)

def body622_24 : Prog (BitVec 64) :=
.seq body622_23 body622_0

def body622_25 : Prog (BitVec 64) :=
.seq body622_22 body622_24

def body622_26 : Prog (BitVec 64) :=
.seq body622_21 body622_25

def body622_27 : Prog (BitVec 64) :=
.seq body622_20 body622_26

def body622_28 : Prog (BitVec 64) :=
.seq body622_19 body622_27

def body622_29 : Prog (BitVec 64) :=
.seq body622_18 body622_28

def body622_30 : Prog (BitVec 64) :=
.seq body622_17 body622_29

def body622_31 : Prog (BitVec 64) :=
.seq body622_16 body622_30

def body622_32 : Prog (BitVec 64) :=
.seq body622_15 body622_31

def body622_33 : Prog (BitVec 64) :=
.seq body622_14 body622_32

def body622_34 : Prog (BitVec 64) :=
.seq body622_13 body622_33

def body622_35 : Prog (BitVec 64) :=
.seq body622_12 body622_34

def body622_36 : Prog (BitVec 64) :=
.seq body622_11 body622_35

def body622_37 : Prog (BitVec 64) :=
.seq body622_10 body622_36

def body622_38 : Prog (BitVec 64) :=
.seq body622_9 body622_37

def body622_39 : Prog (BitVec 64) :=
.seq body622_8 body622_38

def body622_40 : Prog (BitVec 64) :=
.seq body622_7 body622_39

def body622_41 : Prog (BitVec 64) :=
.seq body622_6 body622_40

def body622_42 : Prog (BitVec 64) :=
.seq body622_5 body622_41

def body622_43 : Prog (BitVec 64) :=
.seq body622_4 body622_42

def body622_44 : Prog (BitVec 64) :=
.seq body622_3 body622_43

def body622_45 : Prog (BitVec 64) :=
.seq body622_2 body622_44

def body622_46 : Prog (BitVec 64) :=
.seq body622_2 body622_3

def body622_47 : Prog (BitVec 64) :=
.seq body622_46 body622_4

def body622_48 : Prog (BitVec 64) :=
.seq body622_47 body622_5

def body622_49 : Prog (BitVec 64) :=
.seq body622_48 body622_6

def body622_50 : Prog (BitVec 64) :=
.seq body622_49 body622_7

def body622_51 : Prog (BitVec 64) :=
.seq body622_50 body622_8

def body622_52 : Prog (BitVec 64) :=
.seq body622_51 body622_9

def body622_53 : Prog (BitVec 64) :=
.seq body622_52 body622_10

def body622_54 : Prog (BitVec 64) :=
.seq body622_53 body622_11

def body622_55 : Prog (BitVec 64) :=
.seq body622_54 body622_12

def body622_56 : Prog (BitVec 64) :=
.seq body622_55 body622_13

def body622_57 : Prog (BitVec 64) :=
.seq body622_56 body622_14

def body622_58 : Prog (BitVec 64) :=
.seq body622_57 body622_15

def body622_59 : Prog (BitVec 64) :=
.seq body622_58 body622_16

def body622_60 : Prog (BitVec 64) :=
.seq body622_59 body622_17

def body622_61 : Prog (BitVec 64) :=
.seq body622_60 body622_18

def body622_62 : Prog (BitVec 64) :=
.seq body622_61 body622_19

def body622_63 : Prog (BitVec 64) :=
.seq body622_62 body622_20

def body622_64 : Prog (BitVec 64) :=
.seq body622_63 body622_21

def body622_65 : Prog (BitVec 64) :=
.seq body622_64 body622_22

def body622_66 : Prog (BitVec 64) :=
.seq body622_65 body622_23

def body622_67 : Prog (BitVec 64) :=
.seq body622_66 body622_0

def originalData622 : Decl (BitVec 64) :=
.function { name := "blake2_init", inline := false, exported := false, params := [], body := body622_45, returnShape := (Flapjack.Shape.one) }
def simplifiedData622 : Decl (BitVec 64) :=
.function { name := "blake2_init", inline := false, exported := false, params := [], body := body622_67, returnShape := (Flapjack.Shape.one) }
def original622 := Pancake.PanLang.declToHOL originalData622
def simplified622 := Pancake.PanLang.declToHOL simplifiedData622
end InitECandidate.Proofs.FrontendStages.Declarations
