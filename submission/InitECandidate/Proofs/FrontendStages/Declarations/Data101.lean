import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify85
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body101_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "keccak_rc"), none)) "alloc" [Flapjack.Exp.const 192#64]

def body101_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "keccak_st"), none)) "alloc" [Flapjack.Exp.const 200#64]

def body101_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "keccak_pad"), none)) "alloc" [Flapjack.Exp.const 136#64]

def body101_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1#64)

def body101_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 32898#64)

def body101_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 9223372036854808714#64)

def body101_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 9223372039002292224#64)

def body101_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 32907#64)

def body101_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 2147483649#64)

def body101_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 9223372039002292353#64)

def body101_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 9223372036854808585#64)

def body101_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 138#64)

def body101_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 136#64)

def body101_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 2147516425#64)

def body101_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 2147483658#64)

def body101_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 2147516555#64)

def body101_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 9223372036854775947#64)

def body101_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 9223372036854808713#64)

def body101_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 9223372036854808579#64)

def body101_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 9223372036854808578#64)

def body101_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 9223372036854775936#64)

def body101_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 32778#64)

def body101_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 9223372039002259466#64)

def body101_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 9223372039002292353#64)

def body101_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 9223372036854808704#64)

def body101_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.const 2147483649#64)

def body101_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "keccak_rc", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 9223372039002292232#64)

def body101_27 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body101_28 : Prog (BitVec 64) :=
.seq body101_26 body101_27

def body101_29 : Prog (BitVec 64) :=
.seq body101_25 body101_28

def body101_30 : Prog (BitVec 64) :=
.seq body101_24 body101_29

def body101_31 : Prog (BitVec 64) :=
.seq body101_23 body101_30

def body101_32 : Prog (BitVec 64) :=
.seq body101_22 body101_31

def body101_33 : Prog (BitVec 64) :=
.seq body101_21 body101_32

def body101_34 : Prog (BitVec 64) :=
.seq body101_20 body101_33

def body101_35 : Prog (BitVec 64) :=
.seq body101_19 body101_34

def body101_36 : Prog (BitVec 64) :=
.seq body101_18 body101_35

def body101_37 : Prog (BitVec 64) :=
.seq body101_17 body101_36

def body101_38 : Prog (BitVec 64) :=
.seq body101_16 body101_37

def body101_39 : Prog (BitVec 64) :=
.seq body101_15 body101_38

def body101_40 : Prog (BitVec 64) :=
.seq body101_14 body101_39

def body101_41 : Prog (BitVec 64) :=
.seq body101_13 body101_40

def body101_42 : Prog (BitVec 64) :=
.seq body101_12 body101_41

def body101_43 : Prog (BitVec 64) :=
.seq body101_11 body101_42

def body101_44 : Prog (BitVec 64) :=
.seq body101_10 body101_43

def body101_45 : Prog (BitVec 64) :=
.seq body101_9 body101_44

def body101_46 : Prog (BitVec 64) :=
.seq body101_8 body101_45

def body101_47 : Prog (BitVec 64) :=
.seq body101_7 body101_46

def body101_48 : Prog (BitVec 64) :=
.seq body101_6 body101_47

def body101_49 : Prog (BitVec 64) :=
.seq body101_5 body101_48

def body101_50 : Prog (BitVec 64) :=
.seq body101_4 body101_49

def body101_51 : Prog (BitVec 64) :=
.seq body101_3 body101_50

def body101_52 : Prog (BitVec 64) :=
.seq body101_2 body101_51

def body101_53 : Prog (BitVec 64) :=
.seq body101_1 body101_52

def body101_54 : Prog (BitVec 64) :=
.seq body101_0 body101_53

def body101_55 : Prog (BitVec 64) :=
.seq body101_0 body101_1

def body101_56 : Prog (BitVec 64) :=
.seq body101_55 body101_2

def body101_57 : Prog (BitVec 64) :=
.seq body101_56 body101_3

def body101_58 : Prog (BitVec 64) :=
.seq body101_57 body101_4

def body101_59 : Prog (BitVec 64) :=
.seq body101_58 body101_5

def body101_60 : Prog (BitVec 64) :=
.seq body101_59 body101_6

def body101_61 : Prog (BitVec 64) :=
.seq body101_60 body101_7

def body101_62 : Prog (BitVec 64) :=
.seq body101_61 body101_8

def body101_63 : Prog (BitVec 64) :=
.seq body101_62 body101_9

def body101_64 : Prog (BitVec 64) :=
.seq body101_63 body101_10

def body101_65 : Prog (BitVec 64) :=
.seq body101_64 body101_11

def body101_66 : Prog (BitVec 64) :=
.seq body101_65 body101_12

def body101_67 : Prog (BitVec 64) :=
.seq body101_66 body101_13

def body101_68 : Prog (BitVec 64) :=
.seq body101_67 body101_14

def body101_69 : Prog (BitVec 64) :=
.seq body101_68 body101_15

def body101_70 : Prog (BitVec 64) :=
.seq body101_69 body101_16

def body101_71 : Prog (BitVec 64) :=
.seq body101_70 body101_17

def body101_72 : Prog (BitVec 64) :=
.seq body101_71 body101_18

def body101_73 : Prog (BitVec 64) :=
.seq body101_72 body101_19

def body101_74 : Prog (BitVec 64) :=
.seq body101_73 body101_20

def body101_75 : Prog (BitVec 64) :=
.seq body101_74 body101_21

def body101_76 : Prog (BitVec 64) :=
.seq body101_75 body101_22

def body101_77 : Prog (BitVec 64) :=
.seq body101_76 body101_23

def body101_78 : Prog (BitVec 64) :=
.seq body101_77 body101_24

def body101_79 : Prog (BitVec 64) :=
.seq body101_78 body101_25

def body101_80 : Prog (BitVec 64) :=
.seq body101_79 body101_26

def body101_81 : Prog (BitVec 64) :=
.seq body101_80 body101_27

def originalData101 : Decl (BitVec 64) :=
.function { name := "keccak_init", inline := false, exported := false, params := [], body := body101_54, returnShape := (Flapjack.Shape.one) }
def simplifiedData101 : Decl (BitVec 64) :=
.function { name := "keccak_init", inline := false, exported := false, params := [], body := body101_81, returnShape := (Flapjack.Shape.one) }
def original101 := Pancake.PanLang.declToHOL originalData101
def simplified101 := Pancake.PanLang.declToHOL simplifiedData101
end InitECandidate.Proofs.FrontendStages.Declarations
