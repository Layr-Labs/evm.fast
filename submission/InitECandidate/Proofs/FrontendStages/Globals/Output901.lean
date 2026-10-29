import InitECandidate.Proofs.FrontendStages.Declarations.Data901
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody901_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody901_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "fb"
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])))

def globalBody901_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody901_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody901_1 globalBody901_2

def globalBody901_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "el"), none)) "rlp_bytes_encoded_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "fb", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody901_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "fb") (Flapjack.Exp.const 192#64)])) globalBody901_4 globalBody901_2

def globalBody901_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tl", Flapjack.Exp.var Flapjack.VarKind.local "el"])

def globalBody901_7 : Prog (BitVec 64) :=
.seq globalBody901_5 globalBody901_6

def globalBody901_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody901_9 : Prog (BitVec 64) :=
.seq globalBody901_7 globalBody901_8

def globalBody901_10 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody901_9

def globalBody901_11 : Prog (BitVec 64) :=
.seq globalBody901_3 globalBody901_10

def globalBody901_12 : Prog (BitVec 64) :=
.dec ("fb") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody901_11

def globalBody901_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "txs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])) globalBody901_12

def globalBody901_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) globalBody901_13

def globalBody901_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "tl"])

def globalBody901_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 1#64])

def globalBody901_17 : Prog (BitVec 64) :=
.seq globalBody901_15 globalBody901_16

def globalBody901_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody901_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "wl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "wl", Flapjack.Exp.var Flapjack.VarKind.local "wlen"])

def globalBody901_20 : Prog (BitVec 64) :=
.seq globalBody901_19 globalBody901_8

def globalBody901_21 : Prog (BitVec 64) :=
.decCall ("wlen") (Flapjack.Shape.one) ("withdrawal_rlp_len") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]]) globalBody901_20

def globalBody901_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) globalBody901_21

def globalBody901_23 : Prog (BitVec 64) :=
.seq globalBody901_18 globalBody901_22

def globalBody901_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "wl"]

def globalBody901_25 : Prog (BitVec 64) :=
.seq globalBody901_23 globalBody901_24

def globalBody901_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "wl"])

def globalBody901_27 : Prog (BitVec 64) :=
.seq globalBody901_25 globalBody901_26

def globalBody901_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def globalBody901_29 : Prog (BitVec 64) :=
.seq globalBody901_27 globalBody901_28

def globalBody901_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl"])

def globalBody901_31 : Prog (BitVec 64) :=
.seq globalBody901_29 globalBody901_30

def globalBody901_32 : Prog (BitVec 64) :=
.dec ("wl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody901_31

def globalBody901_33 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) globalBody901_32

def globalBody901_34 : Prog (BitVec 64) :=
.seq globalBody901_17 globalBody901_33

def globalBody901_35 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "tl"]) globalBody901_34

def globalBody901_36 : Prog (BitVec 64) :=
.seq globalBody901_14 globalBody901_35

def globalBody901_37 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody901_36

def globalBody901_38 : Prog (BitVec 64) :=
.dec ("tl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody901_37

def globalBody901_39 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) globalBody901_38

def globalBody901_40 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) globalBody901_39

def globalBody901_41 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "he")) globalBody901_40

def globalBody901_42 : Prog (BitVec 64) :=
.seq globalBody901_0 globalBody901_41

def globalBody901_43 : Prog (BitVec 64) :=
.decCall ("he") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr"]) globalBody901_42

def globalBody901_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody901_43

def globalData901 : Decl (BitVec 64) := .function { name := "block_rlp_length", inline := false, exported := false, params := [("hdr", Flapjack.Shape.one), ("pl", Flapjack.Shape.one)], body := globalBody901_44, returnShape := (Flapjack.Shape.one) }
def globalOutput901 := Pancake.PanLang.declToHOL globalData901
end InitECandidate.Proofs.FrontendStages.Declarations
