import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data609
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody609_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody609_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody609_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]))
  (Flapjack.Exp.const 0#64)) globalBody609_0 globalBody609_1

def globalBody609_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody609_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 160#64]) globalBody609_3

def globalBody609_5 : Prog (BitVec 64) :=
.seq globalBody609_2 globalBody609_4

def globalBody609_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 328#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody609_7 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody609_6

def globalBody609_8 : Prog (BitVec 64) :=
.seq globalBody609_5 globalBody609_7

def globalBody609_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody609_10 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody609_9

def globalBody609_11 : Prog (BitVec 64) :=
.seq globalBody609_8 globalBody609_10

def globalBody609_12 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody609_13 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody609_12

def globalBody609_14 : Prog (BitVec 64) :=
.seq globalBody609_11 globalBody609_13

def globalBody609_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 18364758544493064720#64)

def globalBody609_16 : Prog (BitVec 64) :=
.seq globalBody609_14 globalBody609_15

def globalBody609_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 10079716825146989895#64)

def globalBody609_18 : Prog (BitVec 64) :=
.seq globalBody609_16 globalBody609_17

def globalBody609_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 14248650839231647395#64)

def globalBody609_20 : Prog (BitVec 64) :=
.seq globalBody609_18 globalBody609_19

def globalBody609_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2764919063900629905#64)

def globalBody609_22 : Prog (BitVec 64) :=
.seq globalBody609_20 globalBody609_21

def globalBody609_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 16099105460569216260#64)

def globalBody609_24 : Prog (BitVec 64) :=
.seq globalBody609_22 globalBody609_23

def globalBody609_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 14096706008221550565#64)

def globalBody609_26 : Prog (BitVec 64) :=
.seq globalBody609_24 globalBody609_25

def globalBody609_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 2419779895833949110#64)

def globalBody609_28 : Prog (BitVec 64) :=
.seq globalBody609_26 globalBody609_27

def globalBody609_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 15279073663851639135#64)

def globalBody609_30 : Prog (BitVec 64) :=
.seq globalBody609_28 globalBody609_29

def globalBody609_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 16895767220870911080#64)

def globalBody609_32 : Prog (BitVec 64) :=
.seq globalBody609_30 globalBody609_31

def globalBody609_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 13344426445381913340#64)

def globalBody609_34 : Prog (BitVec 64) :=
.seq globalBody609_32 globalBody609_33

def globalBody609_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 9905384649541406699#64)

def globalBody609_36 : Prog (BitVec 64) :=
.seq globalBody609_34 globalBody609_35

def globalBody609_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 14806603881112131687#64)

def globalBody609_38 : Prog (BitVec 64) :=
.seq globalBody609_36 globalBody609_37

def globalBody609_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 6324581712619534043#64)

def globalBody609_40 : Prog (BitVec 64) :=
.seq globalBody609_38 globalBody609_39

def globalBody609_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 14224731476766686923#64)

def globalBody609_42 : Prog (BitVec 64) :=
.seq globalBody609_40 globalBody609_41

def globalBody609_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 7317203453406000633#64)

def globalBody609_44 : Prog (BitVec 64) :=
.seq globalBody609_42 globalBody609_43

def globalBody609_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 7849414023404435864#64)

def globalBody609_46 : Prog (BitVec 64) :=
.seq globalBody609_44 globalBody609_45

def globalBody609_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 13688264971095146457#64)

def globalBody609_48 : Prog (BitVec 64) :=
.seq globalBody609_46 globalBody609_47

def globalBody609_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 6331469388073975673#64)

def globalBody609_50 : Prog (BitVec 64) :=
.seq globalBody609_48 globalBody609_49

def globalBody609_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 10330303817214507103#64)

def globalBody609_52 : Prog (BitVec 64) :=
.seq globalBody609_50 globalBody609_51

def globalBody609_53 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 320#64]),
      Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 13537634492463488088#64)

def globalBody609_54 : Prog (BitVec 64) :=
.seq globalBody609_52 globalBody609_53

def globalBody609_55 : Prog (BitVec 64) :=
.seq globalBody609_54 globalBody609_0

def globalData609 : Decl (BitVec 64) :=
.function { name := "ripemd160_init", inline := false, exported := false, params := [], body := globalBody609_55, returnShape := (Flapjack.Shape.one) }
def globalOutput609 := Pancake.PanLang.declToHOL globalData609
end InitECandidate.Proofs.FrontendStages.Declarations
