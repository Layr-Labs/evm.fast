import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data101
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate80
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody101_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody101_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) globalBody101_0

def globalBody101_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody101_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 200#64]) globalBody101_2

def globalBody101_4 : Prog (BitVec 64) :=
.seq globalBody101_1 globalBody101_3

def globalBody101_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody101_6 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 136#64]) globalBody101_5

def globalBody101_7 : Prog (BitVec 64) :=
.seq globalBody101_4 globalBody101_6

def globalBody101_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1#64)

def globalBody101_9 : Prog (BitVec 64) :=
.seq globalBody101_7 globalBody101_8

def globalBody101_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 32898#64)

def globalBody101_11 : Prog (BitVec 64) :=
.seq globalBody101_9 globalBody101_10

def globalBody101_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 9223372036854808714#64)

def globalBody101_13 : Prog (BitVec 64) :=
.seq globalBody101_11 globalBody101_12

def globalBody101_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 9223372039002292224#64)

def globalBody101_15 : Prog (BitVec 64) :=
.seq globalBody101_13 globalBody101_14

def globalBody101_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 32907#64)

def globalBody101_17 : Prog (BitVec 64) :=
.seq globalBody101_15 globalBody101_16

def globalBody101_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 2147483649#64)

def globalBody101_19 : Prog (BitVec 64) :=
.seq globalBody101_17 globalBody101_18

def globalBody101_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 9223372039002292353#64)

def globalBody101_21 : Prog (BitVec 64) :=
.seq globalBody101_19 globalBody101_20

def globalBody101_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 9223372036854808585#64)

def globalBody101_23 : Prog (BitVec 64) :=
.seq globalBody101_21 globalBody101_22

def globalBody101_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 138#64)

def globalBody101_25 : Prog (BitVec 64) :=
.seq globalBody101_23 globalBody101_24

def globalBody101_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 136#64)

def globalBody101_27 : Prog (BitVec 64) :=
.seq globalBody101_25 globalBody101_26

def globalBody101_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 2147516425#64)

def globalBody101_29 : Prog (BitVec 64) :=
.seq globalBody101_27 globalBody101_28

def globalBody101_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 2147483658#64)

def globalBody101_31 : Prog (BitVec 64) :=
.seq globalBody101_29 globalBody101_30

def globalBody101_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 2147516555#64)

def globalBody101_33 : Prog (BitVec 64) :=
.seq globalBody101_31 globalBody101_32

def globalBody101_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 9223372036854775947#64)

def globalBody101_35 : Prog (BitVec 64) :=
.seq globalBody101_33 globalBody101_34

def globalBody101_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 9223372036854808713#64)

def globalBody101_37 : Prog (BitVec 64) :=
.seq globalBody101_35 globalBody101_36

def globalBody101_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 9223372036854808579#64)

def globalBody101_39 : Prog (BitVec 64) :=
.seq globalBody101_37 globalBody101_38

def globalBody101_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 9223372036854808578#64)

def globalBody101_41 : Prog (BitVec 64) :=
.seq globalBody101_39 globalBody101_40

def globalBody101_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 9223372036854775936#64)

def globalBody101_43 : Prog (BitVec 64) :=
.seq globalBody101_41 globalBody101_42

def globalBody101_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 32778#64)

def globalBody101_45 : Prog (BitVec 64) :=
.seq globalBody101_43 globalBody101_44

def globalBody101_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 9223372039002259466#64)

def globalBody101_47 : Prog (BitVec 64) :=
.seq globalBody101_45 globalBody101_46

def globalBody101_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 9223372039002292353#64)

def globalBody101_49 : Prog (BitVec 64) :=
.seq globalBody101_47 globalBody101_48

def globalBody101_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 9223372036854808704#64)

def globalBody101_51 : Prog (BitVec 64) :=
.seq globalBody101_49 globalBody101_50

def globalBody101_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 176#64])
  (Flapjack.Exp.const 2147483649#64)

def globalBody101_53 : Prog (BitVec 64) :=
.seq globalBody101_51 globalBody101_52

def globalBody101_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 9223372039002292232#64)

def globalBody101_55 : Prog (BitVec 64) :=
.seq globalBody101_53 globalBody101_54

def globalBody101_56 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody101_57 : Prog (BitVec 64) :=
.seq globalBody101_55 globalBody101_56

def globalData101 : Decl (BitVec 64) :=
.function { name := "keccak_init", inline := false, exported := false, params := [], body := globalBody101_57, returnShape := (Flapjack.Shape.one) }
def globalOutput101 := Pancake.PanLang.declToHOL globalData101
end InitECandidate.Proofs.FrontendStages.Declarations
