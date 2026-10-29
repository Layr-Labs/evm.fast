import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data840
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate824
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody840_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 76#64)

def globalBody840_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody840_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 1#64)) globalBody840_0 globalBody840_1

def globalBody840_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 116#64)

def globalBody840_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 2#64)) globalBody840_3 globalBody840_1

def globalBody840_5 : Prog (BitVec 64) :=
.seq globalBody840_2 globalBody840_4

def globalBody840_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 184#64)

def globalBody840_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 3#64)) globalBody840_6 globalBody840_1

def globalBody840_8 : Prog (BitVec 64) :=
.seq globalBody840_5 globalBody840_7

def globalBody840_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 68#64)

def globalBody840_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) globalBody840_9 globalBody840_1

def globalBody840_11 : Prog (BitVec 64) :=
.seq globalBody840_8 globalBody840_10

def globalBody840_12 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "blob") (Flapjack.Exp.var Flapjack.VarKind.local "i")

def globalBody840_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blob", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"]]

def globalBody840_14 : Prog (BitVec 64) :=
.seq globalBody840_12 globalBody840_13

def globalBody840_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "blob")

def globalBody840_16 : Prog (BitVec 64) :=
.seq globalBody840_14 globalBody840_15

def globalBody840_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"],
      Flapjack.Exp.const 1#64])

def globalBody840_18 : Prog (BitVec 64) :=
.seq globalBody840_16 globalBody840_17

def globalBody840_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody840_20 : Prog (BitVec 64) :=
.seq globalBody840_18 globalBody840_19

def globalBody840_21 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"],
      Flapjack.Exp.const 8#64]]) globalBody840_20

def globalBody840_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cnt") (Flapjack.Exp.const 0#64)) globalBody840_21 globalBody840_1

def globalBody840_23 : Prog (BitVec 64) :=
.seq globalBody840_11 globalBody840_22

def globalBody840_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody840_25 : Prog (BitVec 64) :=
.seq globalBody840_23 globalBody840_24

def globalBody840_26 : Prog (BitVec 64) :=
.dec ("sz") (Flapjack.Shape.one) (Flapjack.Exp.const 192#64) globalBody840_25

def globalBody840_27 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) globalBody840_26

def globalBody840_28 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) globalBody840_27

def globalBody840_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) globalBody840_28

def globalBody840_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody840_31 : Prog (BitVec 64) :=
.seq globalBody840_29 globalBody840_30

def globalBody840_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody840_31

def globalBody840_33 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody840_32

def globalBody840_34 : Prog (BitVec 64) :=
.decCall ("arr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 16#64]]) globalBody840_33

def globalData840 : Decl (BitVec 64) :=
.function { name := "encode_execution_requests", inline := false, exported := false, params := [("rq", Flapjack.Shape.one)], body := globalBody840_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput840 := Pancake.PanLang.declToHOL globalData840
end InitECandidate.Proofs.FrontendStages.Declarations
