import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data468
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate452
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody468_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 280#64]

def globalBody468_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stack_mark")

def globalBody468_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stk")

def globalBody468_3 : Prog (BitVec 64) :=
.seq globalBody468_1 globalBody468_2

def globalBody468_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 32#64)

def globalBody468_5 : Prog (BitVec 64) :=
.seq globalBody468_3 globalBody468_4

def globalBody468_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mem_mark")

def globalBody468_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mem")

def globalBody468_8 : Prog (BitVec 64) :=
.seq globalBody468_6 globalBody468_7

def globalBody468_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 1024#64)

def globalBody468_10 : Prog (BitVec 64) :=
.seq globalBody468_8 globalBody468_9

def globalBody468_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64]))

def globalBody468_12 : Prog (BitVec 64) :=
.seq globalBody468_10 globalBody468_11

def globalBody468_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64]))

def globalBody468_14 : Prog (BitVec 64) :=
.seq globalBody468_12 globalBody468_13

def globalBody468_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 40#64]))

def globalBody468_16 : Prog (BitVec 64) :=
.seq globalBody468_14 globalBody468_15

def globalBody468_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64]))

def globalBody468_18 : Prog (BitVec 64) :=
.seq globalBody468_16 globalBody468_17

def globalBody468_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "jd")

def globalBody468_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def globalBody468_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 1#64)

def globalBody468_22 : Prog (BitVec 64) :=
.seq globalBody468_20 globalBody468_21

def globalBody468_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "msg")

def globalBody468_24 : Prog (BitVec 64) :=
.seq globalBody468_22 globalBody468_23

def globalBody468_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "del")

def globalBody468_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 152#64]))

def globalBody468_27 : Prog (BitVec 64) :=
.seq globalBody468_25 globalBody468_26

def globalBody468_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 160#64]))

def globalBody468_29 : Prog (BitVec 64) :=
.seq globalBody468_27 globalBody468_28

def globalBody468_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 264#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc_n")

def globalBody468_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc_n"), none)) "htab_count"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 160#64])]

def globalBody468_32 : Prog (BitVec 64) :=
.seq globalBody468_30 globalBody468_31

def globalBody468_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 272#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc_n")

def globalBody468_34 : Prog (BitVec 64) :=
.seq globalBody468_32 globalBody468_33

def globalBody468_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]))

def globalBody468_36 : Prog (BitVec 64) :=
.seq globalBody468_34 globalBody468_35

def globalBody468_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]))

def globalBody468_38 : Prog (BitVec 64) :=
.seq globalBody468_36 globalBody468_37

def globalBody468_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 0#64)

def globalBody468_40 : Prog (BitVec 64) :=
.seq globalBody468_38 globalBody468_39

def globalBody468_41 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def globalBody468_42 : Prog (BitVec 64) :=
.seq globalBody468_40 globalBody468_41

def globalBody468_43 : Prog (BitVec 64) :=
.decCall ("acc_n") (Flapjack.Shape.one) ("htab_count") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 152#64])]) globalBody468_42

def globalBody468_44 : Prog (BitVec 64) :=
.seq globalBody468_29 globalBody468_43

def globalBody468_45 : Prog (BitVec 64) :=
.decCall ("del") (Flapjack.Shape.one) ("htab_new_scratch") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 4#64]) globalBody468_44

def globalBody468_46 : Prog (BitVec 64) :=
.seq globalBody468_24 globalBody468_45

def globalBody468_47 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new_scratch") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 4#64]) globalBody468_46

def globalBody468_48 : Prog (BitVec 64) :=
.seq globalBody468_19 globalBody468_47

def globalBody468_49 : Prog (BitVec 64) :=
.decCall ("jd") (Flapjack.Shape.one) ("compute_jumpdests") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64])]) globalBody468_48

def globalBody468_50 : Prog (BitVec 64) :=
.seq globalBody468_18 globalBody468_49

def globalBody468_51 : Prog (BitVec 64) :=
.decCall ("mem") (Flapjack.Shape.one) ("frame_mem_alloc") ([Flapjack.Exp.const 1024#64]) globalBody468_50

def globalBody468_52 : Prog (BitVec 64) :=
.seq globalBody468_5 globalBody468_51

def globalBody468_53 : Prog (BitVec 64) :=
.decCall ("stk") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 32#64, Flapjack.Exp.const 32#64]]) globalBody468_52

def globalBody468_54 : Prog (BitVec 64) :=
.seq globalBody468_0 globalBody468_53

def globalBody468_55 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 280#64]) globalBody468_54

def globalBody468_56 : Prog (BitVec 64) :=
.decCall ("mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) globalBody468_55

def globalBody468_57 : Prog (BitVec 64) :=
.decCall ("stack_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) globalBody468_56

def globalData468 : Decl (BitVec 64) :=
.function { name := "frame_new", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := globalBody468_57, returnShape := (Flapjack.Shape.one) }
def globalOutput468 := Pancake.PanLang.declToHOL globalData468
end InitECandidate.Proofs.FrontendStages.Declarations
