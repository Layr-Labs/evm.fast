import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data282
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody282_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "cbuf"), none)) "alloc"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "nlen") (Flapjack.Exp.const 1#64),
        Flapjack.Exp.const 2#64]]

def globalBody282_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "isl" (Flapjack.Exp.const 1#64)

def globalBody282_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody282_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) globalBody282_1 globalBody282_2

def globalBody282_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "clen"), none)) "nibble_list_to_compact"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "nlen", Flapjack.Exp.var Flapjack.VarKind.local "isl",
    Flapjack.Exp.var Flapjack.VarKind.local "cbuf"]

def globalBody282_5 : Prog (BitVec 64) :=
.seq globalBody282_3 globalBody282_4

def globalBody282_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload" (Flapjack.Exp.var Flapjack.VarKind.local "el")

def globalBody282_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "payload"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.var Flapjack.VarKind.local "vl"])

def globalBody282_8 : Prog (BitVec 64) :=
.decCall ("vl") (Flapjack.Shape.one) ("rlp_value_encoded_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64])]) globalBody282_7

def globalBody282_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) globalBody282_8 globalBody282_2

def globalBody282_10 : Prog (BitVec 64) :=
.seq globalBody282_6 globalBody282_9

def globalBody282_11 : Prog (BitVec 64) :=
.decCall ("el") (Flapjack.Shape.one) ("rlp_bytes_encoded_len") ([Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "cbuf"), Flapjack.Exp.var Flapjack.VarKind.local "clen"]) globalBody282_10

def globalBody282_12 : Prog (BitVec 64) :=
.seq globalBody282_5 globalBody282_11

def globalBody282_13 : Prog (BitVec 64) :=
.dec ("isl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody282_12

def globalBody282_14 : Prog (BitVec 64) :=
.seq globalBody282_0 globalBody282_13

def globalBody282_15 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) globalBody282_14

def globalBody282_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) globalBody282_15 globalBody282_2

def globalBody282_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cbuf")

def globalBody282_18 : Prog (BitVec 64) :=
.seq globalBody282_16 globalBody282_17

def globalBody282_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "clen")

def globalBody282_20 : Prog (BitVec 64) :=
.seq globalBody282_18 globalBody282_19

def globalBody282_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "payload")

def globalBody282_22 : Prog (BitVec 64) :=
.seq globalBody282_20 globalBody282_21

def globalBody282_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody282_24 : Prog (BitVec 64) :=
.seq globalBody282_22 globalBody282_23

def globalBody282_25 : Prog (BitVec 64) :=
.dec ("clen") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody282_24

def globalBody282_26 : Prog (BitVec 64) :=
.dec ("cbuf") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody282_25

def globalBody282_27 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody282_26

def globalBody282_28 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) globalBody282_27

def globalData282 : Decl (BitVec 64) :=
.function { name := "_node_rlp_begin", inline := false, exported := false, params := [("fr", Flapjack.Shape.one), ("node", Flapjack.Shape.one)], body := globalBody282_28, returnShape := (Flapjack.Shape.one) }
def globalOutput282 := Pancake.PanLang.declToHOL globalData282
end InitECandidate.Proofs.FrontendStages.Declarations
