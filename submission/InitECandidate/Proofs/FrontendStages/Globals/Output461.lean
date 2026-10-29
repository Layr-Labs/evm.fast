import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data461
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody461_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody461_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody461_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "expand_by") (Flapjack.Exp.const 0#64)) globalBody461_0 globalBody461_1

def globalBody461_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.const 1024#64])

def globalBody461_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) globalBody461_3 globalBody461_1

def globalBody461_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_alloc"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]

def globalBody461_6 : Prog (BitVec 64) :=
.seq globalBody461_4 globalBody461_5

def globalBody461_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "cap"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]

def globalBody461_8 : Prog (BitVec 64) :=
.seq globalBody461_6 globalBody461_7

def globalBody461_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def globalBody461_10 : Prog (BitVec 64) :=
.seq globalBody461_8 globalBody461_9

def globalBody461_11 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) globalBody461_10

def globalBody461_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cap")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) globalBody461_11 globalBody461_1

def globalBody461_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "len"],
    Flapjack.Exp.var Flapjack.VarKind.local "expand_by"]

def globalBody461_14 : Prog (BitVec 64) :=
.seq globalBody461_12 globalBody461_13

def globalBody461_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def globalBody461_16 : Prog (BitVec 64) :=
.seq globalBody461_14 globalBody461_15

def globalBody461_17 : Prog (BitVec 64) :=
.seq globalBody461_16 globalBody461_0

def globalBody461_18 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "expand_by"]) globalBody461_17

def globalBody461_19 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 40#64])) globalBody461_18

def globalBody461_20 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])) globalBody461_19

def globalBody461_21 : Prog (BitVec 64) :=
.seq globalBody461_2 globalBody461_20

def globalData461 : Decl (BitVec 64) :=
.function { name := "extend_memory", inline := false, exported := false, params := [("expand_by", Flapjack.Shape.one)], body := globalBody461_21, returnShape := (Flapjack.Shape.one) }
def globalOutput461 := Pancake.PanLang.declToHOL globalData461
end InitECandidate.Proofs.FrontendStages.Declarations
