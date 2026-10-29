import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify445
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body461_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body461_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body461_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "expand_by") (Flapjack.Exp.const 0#64)) body461_0 body461_1

def body461_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.const 1024#64])

def body461_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) body461_3 body461_1

def body461_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_alloc"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]

def body461_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "cap"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]

def body461_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def body461_8 : Prog (BitVec 64) :=
.seq body461_6 body461_7

def body461_9 : Prog (BitVec 64) :=
.seq body461_5 body461_8

def body461_10 : Prog (BitVec 64) :=
.seq body461_4 body461_9

def body461_11 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) body461_10

def body461_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cap")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) body461_11 body461_1

def body461_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "len"],
    Flapjack.Exp.var Flapjack.VarKind.local "expand_by"]

def body461_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def body461_15 : Prog (BitVec 64) :=
.seq body461_14 body461_0

def body461_16 : Prog (BitVec 64) :=
.seq body461_13 body461_15

def body461_17 : Prog (BitVec 64) :=
.seq body461_12 body461_16

def body461_18 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "expand_by"]) body461_17

def body461_19 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 40#64])) body461_18

def body461_20 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])) body461_19

def body461_21 : Prog (BitVec 64) :=
.seq body461_2 body461_20

def body461_22 : Prog (BitVec 64) :=
.seq body461_4 body461_5

def body461_23 : Prog (BitVec 64) :=
.seq body461_22 body461_6

def body461_24 : Prog (BitVec 64) :=
.seq body461_23 body461_7

def body461_25 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) body461_24

def body461_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cap")
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")) body461_25 body461_1

def body461_27 : Prog (BitVec 64) :=
.seq body461_26 body461_13

def body461_28 : Prog (BitVec 64) :=
.seq body461_27 body461_14

def body461_29 : Prog (BitVec 64) :=
.seq body461_28 body461_0

def body461_30 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "expand_by"]) body461_29

def body461_31 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 40#64])) body461_30

def body461_32 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])) body461_31

def body461_33 : Prog (BitVec 64) :=
.seq body461_2 body461_32

def originalData461 : Decl (BitVec 64) :=
.function { name := "extend_memory", inline := false, exported := false, params := [("expand_by", Flapjack.Shape.one)], body := body461_21, returnShape := (Flapjack.Shape.one) }
def simplifiedData461 : Decl (BitVec 64) :=
.function { name := "extend_memory", inline := false, exported := false, params := [("expand_by", Flapjack.Shape.one)], body := body461_33, returnShape := (Flapjack.Shape.one) }
def original461 := Pancake.PanLang.declToHOL originalData461
def simplified461 := Pancake.PanLang.declToHOL simplifiedData461
end InitECandidate.Proofs.FrontendStages.Declarations
