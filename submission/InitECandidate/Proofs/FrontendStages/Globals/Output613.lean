import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data613
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody613_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody613_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody613_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]))
  (Flapjack.Exp.const 0#64)) globalBody613_0 globalBody613_1

def globalBody613_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody613_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 160#64]) globalBody613_3

def globalBody613_5 : Prog (BitVec 64) :=
.seq globalBody613_2 globalBody613_4

def globalBody613_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 328#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody613_7 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody613_6

def globalBody613_8 : Prog (BitVec 64) :=
.seq globalBody613_5 globalBody613_7

def globalBody613_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody613_10 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody613_9

def globalBody613_11 : Prog (BitVec 64) :=
.seq globalBody613_8 globalBody613_10

def globalBody613_12 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody613_13 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody613_12

def globalBody613_14 : Prog (BitVec 64) :=
.seq globalBody613_11 globalBody613_13

def globalBody613_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 18364758544493064720#64)

def globalBody613_16 : Prog (BitVec 64) :=
.seq globalBody613_14 globalBody613_15

def globalBody613_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 10079716825146989895#64)

def globalBody613_18 : Prog (BitVec 64) :=
.seq globalBody613_16 globalBody613_17

def globalBody613_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 14248650839231647395#64)

def globalBody613_20 : Prog (BitVec 64) :=
.seq globalBody613_18 globalBody613_19

def globalBody613_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2764919063900629905#64)

def globalBody613_22 : Prog (BitVec 64) :=
.seq globalBody613_20 globalBody613_21

def globalBody613_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 16099105460569216260#64)

def globalBody613_24 : Prog (BitVec 64) :=
.seq globalBody613_22 globalBody613_23

def globalBody613_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 14096706008221550565#64)

def globalBody613_26 : Prog (BitVec 64) :=
.seq globalBody613_24 globalBody613_25

def globalBody613_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 2419779895833949110#64)

def globalBody613_28 : Prog (BitVec 64) :=
.seq globalBody613_26 globalBody613_27

def globalBody613_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 15279073663851639135#64)

def globalBody613_30 : Prog (BitVec 64) :=
.seq globalBody613_28 globalBody613_29

def globalBody613_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 16895767220870911080#64)

def globalBody613_32 : Prog (BitVec 64) :=
.seq globalBody613_30 globalBody613_31

def globalBody613_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 13344426445381913340#64)

def globalBody613_34 : Prog (BitVec 64) :=
.seq globalBody613_32 globalBody613_33

def globalBody613_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 9905384649541406699#64)

def globalBody613_36 : Prog (BitVec 64) :=
.seq globalBody613_34 globalBody613_35

def globalBody613_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 14806603881112131687#64)

def globalBody613_38 : Prog (BitVec 64) :=
.seq globalBody613_36 globalBody613_37

def globalBody613_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 6324581712619534043#64)

def globalBody613_40 : Prog (BitVec 64) :=
.seq globalBody613_38 globalBody613_39

def globalBody613_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 14224731476766686923#64)

def globalBody613_42 : Prog (BitVec 64) :=
.seq globalBody613_40 globalBody613_41

def globalBody613_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 7317203453406000633#64)

def globalBody613_44 : Prog (BitVec 64) :=
.seq globalBody613_42 globalBody613_43

def globalBody613_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 7849414023404435864#64)

def globalBody613_46 : Prog (BitVec 64) :=
.seq globalBody613_44 globalBody613_45

def globalBody613_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 13688264971095146457#64)

def globalBody613_48 : Prog (BitVec 64) :=
.seq globalBody613_46 globalBody613_47

def globalBody613_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 6331469388073975673#64)

def globalBody613_50 : Prog (BitVec 64) :=
.seq globalBody613_48 globalBody613_49

def globalBody613_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 10330303817214507103#64)

def globalBody613_52 : Prog (BitVec 64) :=
.seq globalBody613_50 globalBody613_51

def globalBody613_53 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 13537634492463488088#64)

def globalBody613_54 : Prog (BitVec 64) :=
.seq globalBody613_52 globalBody613_53

def globalBody613_55 : Prog (BitVec 64) :=
.seq globalBody613_54 globalBody613_0

def globalData613 : Decl (BitVec 64) :=
.function { name := "ripemd160_init", inline := false, exported := false, params := [], body := globalBody613_55, returnShape := (Flapjack.Shape.one) }
def globalOutput613 := Pancake.PanLang.declToHOL globalData613
end InitECandidate.Proofs.FrontendStages.Declarations
