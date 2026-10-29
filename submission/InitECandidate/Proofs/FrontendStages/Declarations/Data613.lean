import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify597
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body613_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body613_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body613_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab") (Flapjack.Exp.const 0#64)) body613_0 body613_1

def body613_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "rmd_tab"), none)) "alloc" [Flapjack.Exp.const 160#64]

def body613_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "rmd_x"), none)) "alloc" [Flapjack.Exp.const 128#64]

def body613_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "rmd_h"), none)) "alloc" [Flapjack.Exp.const 40#64]

def body613_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "rmd_pad"), none)) "alloc" [Flapjack.Exp.const 128#64]

def body613_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 18364758544493064720#64)

def body613_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 10079716825146989895#64)

def body613_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 14248650839231647395#64)

def body613_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2764919063900629905#64)

def body613_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 16099105460569216260#64)

def body613_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 14096706008221550565#64)

def body613_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 2419779895833949110#64)

def body613_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 15279073663851639135#64)

def body613_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 16895767220870911080#64)

def body613_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 13344426445381913340#64)

def body613_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 9905384649541406699#64)

def body613_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 14806603881112131687#64)

def body613_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 6324581712619534043#64)

def body613_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 14224731476766686923#64)

def body613_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 7317203453406000633#64)

def body613_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 7849414023404435864#64)

def body613_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 13688264971095146457#64)

def body613_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 6331469388073975673#64)

def body613_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 10330303817214507103#64)

def body613_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 13537634492463488088#64)

def body613_27 : Prog (BitVec 64) :=
.seq body613_26 body613_0

def body613_28 : Prog (BitVec 64) :=
.seq body613_25 body613_27

def body613_29 : Prog (BitVec 64) :=
.seq body613_24 body613_28

def body613_30 : Prog (BitVec 64) :=
.seq body613_23 body613_29

def body613_31 : Prog (BitVec 64) :=
.seq body613_22 body613_30

def body613_32 : Prog (BitVec 64) :=
.seq body613_21 body613_31

def body613_33 : Prog (BitVec 64) :=
.seq body613_20 body613_32

def body613_34 : Prog (BitVec 64) :=
.seq body613_19 body613_33

def body613_35 : Prog (BitVec 64) :=
.seq body613_18 body613_34

def body613_36 : Prog (BitVec 64) :=
.seq body613_17 body613_35

def body613_37 : Prog (BitVec 64) :=
.seq body613_16 body613_36

def body613_38 : Prog (BitVec 64) :=
.seq body613_15 body613_37

def body613_39 : Prog (BitVec 64) :=
.seq body613_14 body613_38

def body613_40 : Prog (BitVec 64) :=
.seq body613_13 body613_39

def body613_41 : Prog (BitVec 64) :=
.seq body613_12 body613_40

def body613_42 : Prog (BitVec 64) :=
.seq body613_11 body613_41

def body613_43 : Prog (BitVec 64) :=
.seq body613_10 body613_42

def body613_44 : Prog (BitVec 64) :=
.seq body613_9 body613_43

def body613_45 : Prog (BitVec 64) :=
.seq body613_8 body613_44

def body613_46 : Prog (BitVec 64) :=
.seq body613_7 body613_45

def body613_47 : Prog (BitVec 64) :=
.seq body613_6 body613_46

def body613_48 : Prog (BitVec 64) :=
.seq body613_5 body613_47

def body613_49 : Prog (BitVec 64) :=
.seq body613_4 body613_48

def body613_50 : Prog (BitVec 64) :=
.seq body613_3 body613_49

def body613_51 : Prog (BitVec 64) :=
.seq body613_2 body613_50

def body613_52 : Prog (BitVec 64) :=
.seq body613_2 body613_3

def body613_53 : Prog (BitVec 64) :=
.seq body613_52 body613_4

def body613_54 : Prog (BitVec 64) :=
.seq body613_53 body613_5

def body613_55 : Prog (BitVec 64) :=
.seq body613_54 body613_6

def body613_56 : Prog (BitVec 64) :=
.seq body613_55 body613_7

def body613_57 : Prog (BitVec 64) :=
.seq body613_56 body613_8

def body613_58 : Prog (BitVec 64) :=
.seq body613_57 body613_9

def body613_59 : Prog (BitVec 64) :=
.seq body613_58 body613_10

def body613_60 : Prog (BitVec 64) :=
.seq body613_59 body613_11

def body613_61 : Prog (BitVec 64) :=
.seq body613_60 body613_12

def body613_62 : Prog (BitVec 64) :=
.seq body613_61 body613_13

def body613_63 : Prog (BitVec 64) :=
.seq body613_62 body613_14

def body613_64 : Prog (BitVec 64) :=
.seq body613_63 body613_15

def body613_65 : Prog (BitVec 64) :=
.seq body613_64 body613_16

def body613_66 : Prog (BitVec 64) :=
.seq body613_65 body613_17

def body613_67 : Prog (BitVec 64) :=
.seq body613_66 body613_18

def body613_68 : Prog (BitVec 64) :=
.seq body613_67 body613_19

def body613_69 : Prog (BitVec 64) :=
.seq body613_68 body613_20

def body613_70 : Prog (BitVec 64) :=
.seq body613_69 body613_21

def body613_71 : Prog (BitVec 64) :=
.seq body613_70 body613_22

def body613_72 : Prog (BitVec 64) :=
.seq body613_71 body613_23

def body613_73 : Prog (BitVec 64) :=
.seq body613_72 body613_24

def body613_74 : Prog (BitVec 64) :=
.seq body613_73 body613_25

def body613_75 : Prog (BitVec 64) :=
.seq body613_74 body613_26

def body613_76 : Prog (BitVec 64) :=
.seq body613_75 body613_0

def originalData613 : Decl (BitVec 64) :=
.function { name := "ripemd160_init", inline := false, exported := false, params := [], body := body613_51, returnShape := (Flapjack.Shape.one) }
def simplifiedData613 : Decl (BitVec 64) :=
.function { name := "ripemd160_init", inline := false, exported := false, params := [], body := body613_76, returnShape := (Flapjack.Shape.one) }
def original613 := Pancake.PanLang.declToHOL originalData613
def simplified613 := Pancake.PanLang.declToHOL simplifiedData613
end InitECandidate.Proofs.FrontendStages.Declarations
